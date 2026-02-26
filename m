Return-Path: <devicetree+bounces-268896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEioIrNeoGmMiwQAu9opvQ
	(envelope-from <devicetree+bounces-268896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:54:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBC81A80D5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C8063099072
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD39F3E8C7D;
	Thu, 26 Feb 2026 14:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I6HfBvlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CD73DA7F2
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117471; cv=none; b=NPdadxHqEBCWxnTfhFjNBMUoOUveJZ/roS3AmrHGD8Ov+ZfD4vjahqUEJKu4VKojFxwVFL2i1BABA6vcfLOI/k/+oq3/Us2LcOH6JrbRHSN0wqJVfEoAYlO9Jhgf/07gl0/6lkPcWSywwwTAVWfjxqlvECwfEgBDUbs2tTpCNRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117471; c=relaxed/simple;
	bh=2MXq5GpIqqueQfGXAlLySRaw8Wg6yAWvMU5nFU0Kh+Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pTe1wz3t7FYdsO3bhuWhAXdA5Z1fMRBEHQWhGVRn7sO7CcH4r5f3HxXzc0iqEf0+5qKeHToTu+VXU1latGcM3w3Ddb3yRGQesyYCtkK4F9Y1rrHlhZq42FDaGkyMWXwla3DAWzlHO0WCCJXcRa4fXo+P0X0W3T9uM1QwlrCTQOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I6HfBvlW; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso8325275e9.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772117468; x=1772722268; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1gxrD2xxduGa3ehj1Ax9aDRC+RRF16V3GLRQN326Q3U=;
        b=I6HfBvlW/WCmx17ZioCiTl1V1VBdmOWPl2UH81XPVhSsaSOD8usw0xSUY0LmmULF2z
         NvQ8eKVX7fEVzjA3l3s43ne2uMBfFW/NWuWmU0BMZTciIWgDREBFyxAmQx/0gt5npFxw
         ErY3GX5TkTDlSUq5S6br+rpBuN64oAUnf/l6RKm4z5UEMX9i4oWWbn9mb06grX4aHmvr
         GanwTXY5A7igSWHLsR4uZierOr/WXwgAbs9zMF30ECan0uIqnIdYn0J2xqD4vELeAqog
         X5++ju2SWzY5wrnuUnZM2bmCB3spPa/rfgr5KNdsMVYIZoWqNY5/UpyNAAu9nFj4s9BE
         H/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117468; x=1772722268;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gxrD2xxduGa3ehj1Ax9aDRC+RRF16V3GLRQN326Q3U=;
        b=oqOPC/f8UdeVv2Bwvr1hOMmxbmOh/vcDFvZ1SaLuJ/sMA3ws0ildVulnxWF7/1q6AN
         4nueVZ42LuIGGVwcF8kOd+K5ok4DB48nUh+SvLhxhS3Ft/HwaQl3ZTRNkRmJ2nXr+PCO
         4JN9AVbr85t3bL99IxIXTE+Iy4EceQZwwpUdH1pzVmemSBz7SNRc+ad9ssVWR5uzUZw0
         o5nW6jpoSJlp8GFCfr92a5BQwEVaaCR9AB+KKlkYkJ73AiAqR3tiZdW1cmQogn1wVQFr
         zXbrUrX0JzEZArdIn+BFzui+mOjFDv9K39of9KGQ9APjwlRZo7dvlebtQSXm/2Dli+iL
         2v2A==
X-Forwarded-Encrypted: i=1; AJvYcCVYl92vUAdSRdxTR7VJXL+5WbHdyaZvmuCdLQckzb94Dt3eOLQUqr1wkcMg11LQPVc3JMyKpziPogw/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr/X+eYl0k6cYfjajZ+banxG5BLhe28XDCwPURPLHfS7XGpqUB
	fAbOU8Wfxyb+MRpVmCMpPVoc5bV7fdVN2gezFKqpmiTM+sUWukKM0nk/393VffF4Zgk=
X-Gm-Gg: ATEYQzwJgJd7ayS9E2+uXqVjvf2eGbUNs7G9VaAo96YSs/nAdpsgyNuPELhg8tQCngf
	apYZcPPv5j2+XGTCUBDazKQFAe0amC2H32mzRfnXFqfu4uziDEJ0WNRfmmZac86N+NOoWRuC8YY
	yJg/cjozlnASGeBjPvIDKuYm6z5xslStBXM/2+vXyv39lpygJiwDZiS6KwmRYgwsXRnLgK7YRbH
	OrgI1R/RElhaIsRs3qAYjV50Fmbne/AQAlrf5Y+PYETie2+HcbEQUjmrt/o4WNrKStAUTdK/tGq
	5e/ZdGWslsF/VTrrQPPE9HZ6BNSxvDVoCP+tKSbFK5ZRDhhiw55pcYaGhU8dfdQGfnsYtF0p88h
	A6BWRPsZwdkZEc/9E9PsZZGENQxu8MtoX82GsQQFE6wIIBftZzWPZgoAzRai+verGR5BDFmO3Ks
	jHITMlNJP+21Gh/jWgOkPksswb/4J33UbeoTYiD/zr/Gcl5h0/uA1POhj84rMSItb3
X-Received: by 2002:a05:600c:3e15:b0:477:2f7c:314f with SMTP id 5b1f17b1804b1-483c2176363mr70664265e9.10.1772117468212;
        Thu, 26 Feb 2026 06:51:08 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf5fbsm36621675e9.18.2026.02.26.06.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:51:07 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 00/11] arm64: dts: qcom: Add x1e/Hamoa camera DTSI
Date: Thu, 26 Feb 2026 14:51:05 +0000
Message-Id: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANldoGkC/x3MPQqAMAxA4atIZgM1qIhXEYeSRs3gD42IUry7x
 fEb3ktgElUM+iJBlEtN9y2jKgvgxW+zoIZsIEetI2rxrgTZr2bIpoTH8mA4TbEh7hp2oQ6+g1w
 fUSa9//Mwvu8H1l+iGGkAAAA=
X-Change-ID: 20260226-x1e-camss-csi2-phy-dtsi-52c85c0d4da8
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1880;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=2MXq5GpIqqueQfGXAlLySRaw8Wg6yAWvMU5nFU0Kh+Q=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoF3b9vX0/D7RmHrklPwIl2sCdPIeBRyypmhUu
 qVEVHZVkTaJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaBd2wAKCRAicTuzoY3I
 OtLrD/4vqj0POmIMX8s5Sx13URy0sn2CzROz7aDwmrTKxqAc1IZ/A3SI9zGnIZ3DD3XH+ZW51zL
 7bg9w7o++WpJNQs8gdMrkPRY7MlIf0Rs3UHq6BTd0Ghm6WUOEJ48xHbD24DW109KKldS7r4eAmm
 zI2JB4bSmjxpBd2AsLao3ju1qf8DA7eqZTtDJkJz3UBc1ktmOr2KH0YPJbWEw6nbTBciL3vn4oN
 eQNhfqUKQCWzkSPBEgeZyVs0DEiYtW+dLegMujKr/GWaAI4GJeDsMz03abc09WOChueHBkcUZ/H
 PcT8KrhhWznxMhN1nBUffelKQ4r/4deTidLaiPzHfAQIOhSClprHVc3QxloN8u5IPuG7Ql43CES
 vwYxJ//kzxYLc1ghp9MxGWEYzzFDlH4FTlUeMYpIPpEx2+DOjWIVJLxEgl7YnCN7yItmAWPSQ9X
 8XPaEg+6KqmLx2sTsx+7K9swzT1TwLCVoOXGZcmL0nQh/kTuYAV656KLBvfumFfmEySUcT3YP4q
 TIvhcAFAh+qGJ1REcrQa8BYTjZTyB+KhfiyqBj12ci83o76tbIxmDY4OlcxIoXigGjFu3jQqAmD
 DdFFPI6Fv9904iC7OoyC0bVxzokj1KepXOsFvartZEQQLowK9enG0D0YaRwYXZHwOPWmAyQ3ULI
 NGn6P38G6oQJj1A==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268896-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 2CBC81A80D5
X-Rspamd-Action: no action

Add the dtsi for 
- CAMSS
- CAMCC
- CSIPHY
- CCI

Add dts for RGB sensors on
- x1 crd
- Lenovo t14s
- Lenovo Slim7x
- Dell Inspiron 14p

- Depends-on: https://lore.kernel.org/r/20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org
- Depends-on: https://lore.kernel.org/r/20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-0-a59c3f037d0b@linaro.org

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (11):
      arm64: dts: qcom: x1e80100: Add CAMCC block definition
      arm64: dts: qcom: x1e80100: Add CCI definitions
      arm64: dts: qcom: x1e80100: Add MIPI CSI PHY nodes
      arm64: dts: qcom: x1e80100: Add CAMSS block definition
      arm64: dts: qcom: x1e80100-crd: Add pm8010 CRD pmic,id=m regulators
      arm64: dts: qcom: x1e80100-crd: Add ov08x40 RGB sensor on CSIPHY4
      arm64: dts: qcom: x1e80100-t14s: Add pm8010 camera PMIC with voltage levels for IR and RGB camera
      arm64: dts: qcom: x1e80100-t14s: Add on ov02c10 RGB sensor on CSIPHY4
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add pm8010 camera PMIC with voltage levels for IR and RGB camera
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add ov02c10 RGB sensor on CSIPHY4
      arm64: dts: qcom: x1e80100-dell-inspiron14-7441: Switch on CAMSS RGB sensor

 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 485 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1-crd.dtsi               | 106 +++++
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi        |  61 +++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 136 ++++++
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 128 ++++++
 5 files changed, 916 insertions(+)
---
base-commit: eb2e919f862323ed36ce6b8c2db7e5735f93b951
change-id: 20260226-x1e-camss-csi2-phy-dtsi-52c85c0d4da8

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


