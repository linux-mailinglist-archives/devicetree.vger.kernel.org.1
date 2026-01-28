Return-Path: <devicetree+bounces-260307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MPrIPfleWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A99B9F842
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 802C63004D21
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A7B22DB7BA;
	Wed, 28 Jan 2026 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+oRCeba"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C8A23D7E6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596403; cv=none; b=Hbexy9iEJrFszNcMpKDG5u+O3VJMy61+kRmwg7EQpFtqbguB3e3Nph1VMZ0RNPfNZxeB5x+6XJA6sC9AxhorSlrsRV++46hd8Me4ChTC1IPsOK+jnsQJxK0oLXUeFDt4OVd6NDrSfJw1EgEQ30dBKXrQzXhItz35VS0ey3X0KGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596403; c=relaxed/simple;
	bh=9AkckLqdr8I6dlgDgVrsAdmTfOWX1yDDhCH2GGETIwY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ephapt+60iM6qebpdZLYxMExPBCaqddE1DuM8e0dvxHZeyTETIEKfrzDyo/x/5kRsxurpfY+PhSTlpSZQGjPwJ2ZINNf6YtxocUyNtcNNSh1gXBh+zG9jqbUmbdjq4BW0WGslhqoS3UFERm6Tl2QS5oxT6TrvvlXwJ/JAku31ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+oRCeba; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43284ed32a0so3965864f8f.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769596400; x=1770201200; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jfl2h6WtMvC4uth4uJcH1z3Hy9APzsqFDSQKZVX78Us=;
        b=B+oRCeba7dGVmIL5ynOqYL84OaPQbZUgC3c9DaSS+rp4TQXkGTrflS0s0pjYAooB1E
         9YnImHAqcxZa+Ec7AIR8kDYopHR9LcDfLSsXuylJf6a0GxjXfiuUmJdhXkB7gMdxmCBQ
         V6pFy517w4PoOKH2ynn4LLTVyt/r3Up/OTHh9f0r1o9Lwio8Nb94dXW2sPPCzHmQ/EiX
         67WSCX6kz/8uX96FnSb1bjxN7wyMlzZvLjuFOEj9kktZVFPBCIscxdfAj5NrT1ghd5pH
         RY5ntJ1jjzm5LOtC65Ced4obb6X6rToDwO/5/lLG5AOLjVmbh2kClKme5INE9uQ4XToy
         rz/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769596400; x=1770201200;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfl2h6WtMvC4uth4uJcH1z3Hy9APzsqFDSQKZVX78Us=;
        b=hva41iQpPGARb4RJXW7ishuyYfsnVfsv/PAMzNENTL1Nd5BKESC2D0AiPHhYqE9BvP
         XIbQhrm1orAp+eWk2M8bNvByQseWQubg3ZslTjrteBv4DmVYmlyYPX5HIZPlgjZbXs8r
         L7+SIGiVGX+9s3Rb3yUqQb5w5TzAnmumFRIp/53Izk4vDGV3XOurfmNiDZDnpFlaJwYt
         15ERn3FEcli5E5cDIvz9YkBQ3T9CGogDJoM9LfoqrDzlj+FouKXRTzxrA8E2QCDeTRQf
         x004IefIfGOnM0+l6IO5IaDVlyAbwFL85w+V2rdnQtdmoJhgWqdqGGTqz4c+8szqT2Bn
         wrMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLoSI3nPRpSwzBc8zPVPT/FOjPaglhqtWuK7jNdZHOISWQahWDve4R63+Syp/rJceKYT+uBGClrxXP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk5Utr4wL/7C/akjhL4bzLgyho5e4nYYoNVg4xr+hjamM1g60p
	equ2D+Nv39OZMNGZxy7XyCQALJF98F0wVYO0hqlJbWSuYeRSa4xoA4psNFZjGDEKQmXllf8XrJO
	fjP1i
X-Gm-Gg: AZuq6aLFOQnWBi9vOjQa2KBRS66hH5VvNFVRXL8oXchrrg6o9mjtqIpt+YPLAVK33eM
	G+aT+WEnzqKqba2uYYhnMwNYVCGjhJ8FRtuqIU9bYvA8MX2d5Uln7zlybSevn7MSg8RP9X2+DYz
	/6/4XsjyU8MyzRLFllcAnwD7UE4SuRSJPZRxc20NreK02iPMp+0JogJJRL7GMW+zBJ4nkbGItgz
	XmVSgXGeEN1b8hlQOvpyFwbSQcr8QqQhrUgH+nzqZlVwdIphqUkSIOpJ1IYiPpXj0LtLxwzen5h
	8uEOvi6VKp+Wj8Lt8Sc5GsDM+/zmwkzrhlEYRim3Z2d0CJcpDgaH81XXhC2SmJwPydzCn8+Zoig
	tYOxAanP+YJylYXMe/FlMFKZQ0W56uhz5k3oLMAdY3xKThk0+adlyqQPwM5Yv2l27AV223EbAtZ
	oHO5hjLamwJdYNcInQSD8l9YrWwUCzR4k=
X-Received: by 2002:a05:6000:2585:b0:435:9690:f056 with SMTP id ffacd0b85a97d-435dd1c0bb8mr6932521f8f.35.1769596400166;
        Wed, 28 Jan 2026 02:33:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132356dsm6241692f8f.33.2026.01.28.02.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 02:33:19 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/3] arm64: qcom: sm8650: misc enhancements
Date: Wed, 28 Jan 2026 11:33:15 +0100
Message-Id: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOvleWkC/x3NQQ6CQAxA0auQrm3SGQWJVzEuSC3QBUzTgjEh3
 N2Jy7f5/4AQVwl4NAe4fDS0rBXp0gDPwzoJ6rsaMuWOUu5xK6aMsfRdS7hbbC7Dgmw7mhcLpHt
 7Y5bxKpSgVsxl1O//8Hyd5w8H/TEmcQAAAA==
X-Change-ID: 20260128-topic-sm8650-upstream-cpu-props-0754ccef3e01
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=749;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9AkckLqdr8I6dlgDgVrsAdmTfOWX1yDDhCH2GGETIwY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpeeXttDIfNvl/Um9XJcuBIoNdEzmtMMk72eyg3c0s
 7i+umZ2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXnl7QAKCRB33NvayMhJ0Sn2D/
 9AIWn2Ezff2PKz5c/Q1vdRzWrZswx9o8hz0Me5DMo9dtL6JArXtY0Hb8MTjD0LAitdg4o6wYYlg64Y
 xn2dsj6UaU7aO66sUHCp29+lAhyrgVqa+xv8Oz5iwwxQv2ujLumHf9I4a9VZSuhg8Ay9uCEsPKNzi8
 ZDbyWQY/05jI/x8Fp3WMJ9fNJOJo94QakPO6nRNv4NF6XyASRi3DzgO4DGZTnaJDGr2rDPupo6JXwu
 EF+7toKrhf1VEmWEtTbFbldpi5Ng1uOVrDLai0ssiu2VnGMXA4XtSWaj0cDNH8AnKaKlErNVGbhL7m
 DA4xjbtHdStVZGwWzdVJCkV0CEGntgxN2tr995kdZTVrHa2nmC3IN77Z451JY0sZITimpyTMi47C12
 8Y+3VGQXQFEAjBkbhhZwxB/by1/LZ8idMBpyLM56LuQGHg6hSxpxvlQe2ssmZgN1dLayAkrCiT42ti
 Sl1EzwTF2cuY3yzu5+I4rbfjlkgmPdW6Go7y5EhzSAmZPLejlPoWHxT6LDmB+hBbUFWpQYUr6Vdc1D
 7e9zsmTZLz9Y+4epbPY46OjUYfXbgxr2kGEDdL5Y1XdrLd7j0HyAHyFM27/kBhNNb/XVwL1SC0/lT1
 xvOvWaUvPz1mJamf58xj+mPtjzBVPrvNMjfwY8oZeDuOOpn3G/kqKBB8zi9w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260307-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2A99B9F842
X-Rspamd-Action: no action

Misc enhancements for the SM8650 platform:
- update the cpus capacity-dmips-mhz
- add the CPU cache sizes
- correct the soundwire ports

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (3):
      arm64: dts: qcom: sm8650: update the cpus capacity-dmips-mhz
      arm64: dts: qcom: sm8650: add CPU cache size properties
      arm64: dts: qcom: sm8650: fix soundwire ports properties

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 110 ++++++++++++++++++++++++++---------
 1 file changed, 83 insertions(+), 27 deletions(-)
---
base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
change-id: 20260128-topic-sm8650-upstream-cpu-props-0754ccef3e01

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


