Return-Path: <devicetree+bounces-203247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 181D4B208B7
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:25:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6053421122
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769CB2D3A98;
	Mon, 11 Aug 2025 12:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bmLaxG09"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE112D3A72
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 12:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754915124; cv=none; b=E/Gj+czsX6kvZZGs7BNy2VqIkZo1pgqf2p6beQUA9p1cxnucqFcXcK1K5/UzNoY7hbIhhjLSup3kFZP327ck3YD4lcF6i8OG9eLg4DB38vDl1jwbXqsQoQNN+XJPlUmw8s4gPuvBBtpn7MHbv8lzhP4PVzAZIMi1FQNOWa06C60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754915124; c=relaxed/simple;
	bh=qeE2dI95+q9zH7Z4R8xELCu6A2hM+SkBW0ePTpt73m8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JPSrHmx9gDpIqbJThEYdy18KNsawjITBZUs9a1vByEyc9cWQUEmkayGHaLfGPcbqJQPCFbZSNU6oRn9DaHTe0FydajBSL9TB0Cb7y5XcbWqL2aYlfoYlp/Nr6WVSDWI8WlvoA1iFzcG/z6ITquJpFsyqIxZYIXer07ngd4pYd3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bmLaxG09; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-459e1338565so40197755e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 05:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754915121; x=1755519921; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OCcFsT9f3M4ghzYK/0b8fD+a2C3U1uCoHn6sd59j880=;
        b=bmLaxG09R5/ZUNVaVBmiAb7K0py/GJAAeggGWtXzi02sH/3ny9bh1IriNOb127k/G5
         yL1DFBa+DNuAzrjKTd6pxjlzxx07bptGqU27qnQWldkWwfOvbMoAWxzmIE4wqtJHJ4XE
         5BJofirfflxI+d1fUiGqa5PXxN2CGq6/PlwNuMfSzF46lLmt/ihm0l0NvjxzGZ8ODP8V
         8pu0HoDAVUmTE2eQQtlokYQ/mh+upl7oLo/nMnFK5fgaI4MBn9TB6gvL5H9vn7A884Vo
         BlY8PDZkixXfT7ywJ/jOUR+PWCMbTj/b6yMZkbijgEF8uCcyXqCS2hmpB35a+k3xg9/d
         5iLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754915121; x=1755519921;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OCcFsT9f3M4ghzYK/0b8fD+a2C3U1uCoHn6sd59j880=;
        b=ZpoZstAKnGHLTjyLchoutlorBpQlX26tbpCV2nPJBaKoFDzA5Ulwpzp9+K8lFLsVDT
         uNi+X4GS2ebk7+bFEx13monMBBblXNa8VdzbDhN71Y9+oqR3H1P84lUNCb19mRrBuNFR
         xLodLWk2xBg3fTzP7NBA/GiIhnkvklwb7zsPRT+nd4JxjhtR/cobAZ89kD9oD+hKly+W
         1+gDTSMfCnZ41H2i5imuKKIwDOjiGUe9syRHtLKxiCTkSdbhS+QvADEfMWOyeJ0+vnxK
         mQhglNX6YjOxgACj8hRPqNtm8AXq7h1+QAR7V+Cwo6aUEkzDOtvQiXOu8yTilClTFres
         HtBA==
X-Forwarded-Encrypted: i=1; AJvYcCVUKBx6yFGd7VfJ7QgrgNYr1VwDuawz+2SQ3cxQPp0/rTD3+1uQaL+/IQ2Rk2C9svN5/wJcwanBHM4/@vger.kernel.org
X-Gm-Message-State: AOJu0YxvcCpG8APCGIu1uqVMEqNob/eh4M4SLo04jiZxDLl62KL6ZeAJ
	Fh0/Y5NlYiQOG2ZLsqYxYaFb7K0dRMvGNa8iMxyQ6lshW9RIf0M4he9ByIlOcaTQqRZT952LrEV
	yWG2C
X-Gm-Gg: ASbGnctwzKzQvy6uCPYooFuXHlpv7Sbf6JytV1dQ4H4ZvyIeQC+DkBvOmCdRD/CHvQJ
	IovcXr5TXK7CV11LwfxTC51pAoHsi/CvQayqbL1X9w9Vty0+nZ9WAfmXB2Hr132icnHWZCJFmfH
	5tieeZF9R/0CjP6g8cjGvBtvWSn3PuWbRKoM8RActsty2Dz5zh+Z8klb1p/BbHwpjAQt9L3JR9i
	LtzmC3hN1SVAxaC9XR17m9dmFd1yuTN93umUKuJ5LFU0cLqagiAhuUmZuJeaPNcffROs+6EqDS1
	H90iVM7EK4+eb/DPOvTgME45B0WDp6k7mxsLjHlXEDkcXp1emFzsdyr/C7T1p/ob297YquEwPkb
	2ZIibtX45kdwBUpVSnf1Sc2R7BrstYZ9LjI29m6dPyT8=
X-Google-Smtp-Source: AGHT+IGcQwEyDbe2pXxLn4ow6niZaQ4fttyXdpX3FYOGgvEv7GarX08RB/egP79bBy+6DOZLsGVFhw==
X-Received: by 2002:a05:600c:1d16:b0:459:d667:1842 with SMTP id 5b1f17b1804b1-459faa96842mr90534955e9.12.1754915120888;
        Mon, 11 Aug 2025 05:25:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5d0b1afsm248013475e9.26.2025.08.11.05.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 05:25:20 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] arm64: dts: qcom: sm8[56]50: flatten the primary
 usb controller node
Date: Mon, 11 Aug 2025 14:25:16 +0200
Message-Id: <20250811-topic-sm8x50-usb-flatten-v2-0-0bbb3ac292e4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACzhmWgC/42NTQ6CMBBGr0Jm7Zih/Kkr72FYFJzCJNiSthIM4
 e5WTuDyveR73waBvXCAW7aB50WCOJtAnTLoR20HRnkmBkWqokZdMbpZegyvy1oRvkOHZtIxskV
 iKsgoU9QVQZrPno2sR/rRJh4lROc/x9OS/+wf0SVHwrLjptS1uuZFfZ/Eau/Ozg/Q7vv+BYzLL
 YbBAAAA
X-Change-ID: 20250729-topic-sm8x50-usb-flatten-0e030f2f3650
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1029;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=qeE2dI95+q9zH7Z4R8xELCu6A2hM+SkBW0ePTpt73m8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBomeEueTFxOA5lR8u+3Ussf/26QrfxWIork3rWr6iP
 554t2lmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaJnhLgAKCRB33NvayMhJ0XDQEA
 Co21OE+vU7gOPEzarJl0oz9SpSDRQt7TJ8e3TMdNZekT5ejjt/nYWulUw0YgGWfciKnf1XVjTLbYUN
 a5INwojvXdSZ7vF0lj1UdLe9tI1pCF0MJh95CDc2p2bLArDKEoSXBBpRHk7gCwxN0jCcCK6J0D4EO/
 0eWJBGMfFG2/8YIrPJz58nnhz4jKBYC51NStyc0yaPqPbAcFXWLoIQkPygqumlQeLfhvwhOwrNZNiD
 htHdjdoinjlnU+od6/3quoIYSx2NT722azO/bQwX4ZOnhH+0IZLCCZXI+diFOyzOAd3WrSX7qehY9o
 VC+RSsYxP5YD9YtjgmbMpq/59IermlJoQPF/ow9zi9dbgjkgXfIVhvR46cvAa9DUgvWnQI8knF75mA
 JHui3xJJYXS9t8P4Jy2pWIdFp9vjlr/6BJLvLAKD3t85ifxonU38Fw5xIEE/Pzhhg38FXuAYsLoMRS
 MqCuk6wHseMH7gPkUCJGSqJs9trh2fPfAxaV4GvMOFBe04ToZDI+PKy08qruDanyBbiyzurS+PhhLF
 A3uz8i0y4n9zojWSvOPJpztIl2zcCft5sy9c1mLWsYlWrrG0/WGjlDtg2WGWxF/ef+qkq/LmsaxPXg
 xUFCEFnLWrHfnXK12+ZvzfgLlBQIhzeTJuTe58aM1u8b/WBkP/U68bd3rlbw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Flatten USB Controller node on SM8550 & SM8650 to move away from legacy USB
Qualcomm glue driver and make use of new one.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Fix usb registers size
- Link to v1: https://lore.kernel.org/r/20250729-topic-sm8x50-usb-flatten-v1-0-4be74a629136@linaro.org

---
Neil Armstrong (2):
      arm64: dts: qcom: sm8550: Flatten the USB nodes
      arm64: dts: qcom: sm8650: Flatten the USB nodes

 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 84 ++++++++++++++++----------------
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 86 +++++++++++++++------------------
 5 files changed, 88 insertions(+), 100 deletions(-)
---
base-commit: b1549501188cc9eba732c25b033df7a53ccc341f
change-id: 20250729-topic-sm8x50-usb-flatten-0e030f2f3650

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


