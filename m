Return-Path: <devicetree+bounces-111016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 766A899C8CD
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:25:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A588DB2DBAF
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9E219F12A;
	Mon, 14 Oct 2024 11:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ANehEhzO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B16158DD1
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904927; cv=none; b=X/flIuXLDnIcvnSch3wSOlL/D+Y1z3LE54EWfRDF2ZaU6Ny+6brzAcAfLtlKBSovGcTnEQHWW53nkAPo/RAtjjs5BdU/lkiTNqmtMipEVb0SrkCxJUdSy1BbJiAob+3z/XMhsmwU1NIg8kEw3jpbRVrhn58nuxQyen3VddMVqik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904927; c=relaxed/simple;
	bh=r8uHLvAgChkdDFULHnIzZARobpeBkRPSAmDsg7UaSXo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=akmx1/+9LFO0+gBlqkL4XImkQ2lBIQ7jfYpCtSE9x6zPDEbeJVbXJXPjq0qS16hd5nuJAi1M25BRx8CU75uCvlC3m+j/I5eV+e66m16yc9Z5Yos0X7rTNHFpwVR+76yEmoU5HGXIRRNtucY8ZzTIUNy2qiIyK5mEB/Sbr8kg3Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ANehEhzO; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d70df0b1aso904477f8f.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728904924; x=1729509724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/2/ZBK2VdVmT0ti0GWpWf9A3brA+cjwHMxX/7nDvK8U=;
        b=ANehEhzOavsFr02SPoWY9bmjeeI4XPsaaHMzFYxsmx0Bur/AlXo09XYs6YKwhzj+Nh
         Xt0Gk1HSU6h1w1xRBea0EOzvPYJGc0EIzyCcaO7aQNEM8kRTRfRHFmjbS+MHgcSGw8Lw
         37yEZz0xXnqA/+sgOi4RX4RZL0fr0GW5bhRKOggngDZHgEkVuoG6MUO5E7hDLJTbrd9A
         aPG3Q8mzMc+CVatJkq8SYaWkD23K3BUGmb8Q612Ib/vWmNAhQeyo1kt6MNmdQUaC2/6g
         k8QMu3CKKaBEeaJ5YPc3jYuddtlexawGRWv6incLaIGp7R55AdeyGN9uz+cI/vjr/DA5
         mN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904924; x=1729509724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/2/ZBK2VdVmT0ti0GWpWf9A3brA+cjwHMxX/7nDvK8U=;
        b=EQ8LcuZJYViN6oui/zib7TwPaRZQb9ClGW2zKcAN4MKB+WzRRIo4J8KV8BaeT1qlEA
         r1vUoMXrbOVCn3+k7N8KFvfZf+cV0fRINk3g1IauzdBaUSNkDZci9XzfWy34G2IM8spO
         VwIYYKEXF2j7chBuOAyPHSKgUv8Kf6cw7hcJSlsmCHkxqJ5HklE+QDjdWIZ4LNratDD7
         potK1pFcjVIVDIxp6EWPjZFpp/WWCh0Ay1JS0lbC6hpN8uUw7nBcX/UQIN9w05C0csOY
         OOW9mxVmiSjY5vEJbxSX5NsPBwM/MyfU4m7cndvVzhFA1mav4aylDha+u/W+AZ1wwg0S
         Nn0A==
X-Forwarded-Encrypted: i=1; AJvYcCWUBKBxx+vLPekGenQPdGNjs8pzaow1EXR8IY0klpmOJubl5DXHEMoQKh5XEeGeHZjf5LZ0bgkRJ2pU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh6Yqf0G5qJ6kF0PHKGILkB7Iu7StxnS07Z5Qwz8yg5Rq2I8DC
	RYghB9BVCjSrwORItrl9NcrGKYiImLxvB1zYrnJUbuYdutco55c5eKj04G/f3sq8VdDltweLf0F
	O
X-Google-Smtp-Source: AGHT+IFp5a6oUCJ5JK9FimqbiklIdZ6wigQ10WlYJ6Aja8n2a95nBbdr4l0FOvTpUDt3uTtWSQHGIg==
X-Received: by 2002:adf:fe47:0:b0:378:fe6e:50ef with SMTP id ffacd0b85a97d-37d551ab389mr9168001f8f.5.1728904923609;
        Mon, 14 Oct 2024 04:22:03 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6a8666sm11098702f8f.22.2024.10.14.04.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:22:03 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: x1e80100: Drop orientation-switch
 from USB SS[0-1] QMP PHYs
Date: Mon, 14 Oct 2024 14:21:47 +0300
Message-Id: <20241014-x1e80100-dts-drop-orientation-switch-v1-0-26afa6d4afd9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMv+DGcC/x2NMQ6DMAwAv4I815Id0Zb2KxVDIG7xkqA4apEQf
 8fqeMPd7WBSVQye3Q5VvmpasgNfOpiXmD+CmpwhUOiZuMeNZSAmwtQMUy0rFg/kFpubaD9t84L
 h+pDpdh8ihQk8tVZ56/bfvMbjOAGfdW4EdgAAAA==
X-Change-ID: 20241014-x1e80100-dts-drop-orientation-switch-259eb678a02b
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=879; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=r8uHLvAgChkdDFULHnIzZARobpeBkRPSAmDsg7UaSXo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnDP7SX9XZnlGPV8Bat8gT3d3h2+Jv1ZkKMEhhQ
 iv7v8YKr4GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZwz+0gAKCRAbX0TJAJUV
 Vl6QD/wIEWDUGvfPzQWTEzswXqwW+WHSqpAylbv8bMb345tMhM+yIGFDDuxm+UEs+AC1Lu3N90O
 2n+LWeOkUSbzpPViCwF9yYRniSNuk3yn2bOkNAf9ZybQEwciWOcLq4Uo2SCXhUHTrcNyKFhlyXi
 eLnmH1FLnJFEjrEoPUJsJ0ODxeNjukEXpn50nWeKh04FDkv7TlO0UfEOktIyHVDSnpPsI7Arn+t
 de4pNlzqfungGVt4MIu84/0XtQIW/cmKutS32DxdhSDqZR/svsgipfnFmadd/Hjtue8lWpg69uQ
 2GrM3DllKsE5tKdGIsHs8iI7yVT12jl9krMAfsAjgkltMtIe2oN+NnfGK+wkd5rNtDmN47gWWE3
 Bk3ZLltadEL/eNJf22eR6EgJQ6ZQxbw4q3l+c1e9TKOivXSEucYL5ehrKDT0CNlghzHA9+UFwO2
 yQJzdwELmgc4ybMs6qpAs9yo5/QziJMe8yvKijllY4NlqXSoBIZjCzHOBfH/YuVyiCMsjVrgLwW
 o3onHWwtRDoCy6OT4RzRD7IKfYsP7obQNgSo65Uma/GOFH8CMZD8O1rcqQgkcE7PPUmmmkIbu9O
 VCblfXvBvKdqKMzMjFyvqhWIIIYXCZzHUwJtvdRpXnWYoJti8muMXllkB2j1nTO3495ggcKa9CE
 nmSQ5H6uypDLKsA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Slim 7X and Vivobook S15 are the only remaining X Elite platforms
which still unnecessarily describe the orientation-switch in the USB
SS0 and SS1 QMP PHYs. So drop these properties from the board specific
dts as the SoC dtsi already describes them.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      arm64: dts: qcom: x1e80100-slim7x: Drop orientation-switch from USB SS[0-1] QMP PHYs
      arm64: dts: qcom: x1e80100-vivobook-s15: Drop orientation-switch from USB SS[0-1] QMP PHYs

 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts  | 4 ----
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 4 ----
 2 files changed, 8 deletions(-)
---
base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
change-id: 20241014-x1e80100-dts-drop-orientation-switch-259eb678a02b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


