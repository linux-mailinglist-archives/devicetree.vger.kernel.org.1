Return-Path: <devicetree+bounces-263575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGceHv4Xh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:46:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D151059CF
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A9995300517F
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B6E33375D;
	Sat,  7 Feb 2026 10:46:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833DC2DE701
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 10:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461177; cv=none; b=mfHgz/BcHmifSo+QleHS/3pcA3MAqRHO1q1rL2ttE6WUlNVijq6RkQ/Mc/pLGQsa68T0VFUApg4o8/vNSK4UrzrPA1Me7Q/IGaZlLfv4bDwLYy/oJI72sGQimXhWH1FEZ+nVrtTdyK/aJN26vG5OQRwEFldJ4MeQXZJShD+/WI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461177; c=relaxed/simple;
	bh=5Q6TvLY/RbHZ1KdJAWlVdNsqJQkwIq+W6hCrtWZHAmw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=H3a/icEvLHHJz0dNDH0vir068zKDYrTeM7WPEffiJef0toFxlhKdEbObrSSHPk+JlUlfqOk2j1CS1XwUTEc9/Nz7lLZdOydFFYn/7z8lcEin+CahIZrbyLpEGWEseK678aWyDtz3JPXEjjChXxtbOIO/AAkNfKqcF6xFn3JYGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-124a635476fso4255332c88.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 02:46:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770461177; x=1771065977;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ChJbRxXRn9W4h+NWhGTjFYORsgh2JIJbfvl11eQ14+g=;
        b=LbkT9+1T3oR/OT5EIiMA0yvb3wHcsfugbeN/CE57mIFh2RhPjtZSl/bWdJW/7VWkci
         q9EYzS678/V+SY/Wgmm0iQpEEUZ6YTSDMA/PIme+q/QUt2lPfldP4XQWuSOZOLfwpwv7
         2DJYP7/yr1ZumeHs4NNqVX1G/9Zn5gL6llJOxL2Ux/1jgaW1v+xJKPWhxZzqI0P8gXx1
         r7EWt2Ihrqyggf77/PHIoRbzsdR/QWeEpWa1LyogBgmu0phCRfP3vyFe+70sUkzUs9rW
         EnjgD4S+uVOUGTs8B8/LfJ2QZdrO6m0uEATFah7rucFrotQDsqGlUgaarFQjYZOrtMQp
         1+5A==
X-Forwarded-Encrypted: i=1; AJvYcCWvve7P6zJcF8v8zli4OUSyb0k307t9pEas9hGRCadSPRT7AvEswfyZXDJEFHl9dIIwPrrZw1A05AzN@vger.kernel.org
X-Gm-Message-State: AOJu0YzAsTMLSI+CTmrSW91s7loRiM0ByZsX1rQOMvpq79RB89ntfF11
	XEjEt72dYHeGZBnRxhU/MDKEjEzBL4G2CC78ykntpS3CBtzEVcAa0pQo
X-Gm-Gg: AZuq6aIqtbrtoL6Ca3VP+1ZDPYoTks2ny6f1uc5Kuaejl+Ap6jtzAA+V3yDME6i+4fM
	3HUStMqEsjb771Gzq0KxVHDRlltIHB1DR3DnpPbBMOGrIgZGjZc0qZfWpoA2SAZWIJRJIzF16/n
	JyIrUZS2YYpqIel9OUrfZytqUicMAmJPGymZF7ba/PhnImEs9vnLYZzSzohPQbJqH2Z50O+FdQI
	T9bkAlSo/wLA+GHx99yqHhOy2SKwNIRDos53ZQW2wk9u0S1kuTWYVBVEZaySdyPATh1NHVzw7hi
	mhX7YHHvnHjlU49aQ6umYv7/nklNzzvDXVWKbmVZhXB41C3GQjNS6ENXENue4siWjutRY+8ioRr
	aDnoctmJgyJ9/6nlpCEoM9M8KkqTMGLcH17+PtWMVeYDm3KQV5S2ddB6F28emQtJ31vZ72Rc4ba
	vJ0Qmcw3I=
X-Received: by 2002:a05:7300:6429:b0:2ae:5f89:cc42 with SMTP id 5a478bee46e88-2b856937776mr2484103eec.36.1770461176547;
        Sat, 07 Feb 2026 02:46:16 -0800 (PST)
Received: from localhost ([76.88.4.82])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2b855c5ec07sm3508428eec.24.2026.02.07.02.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:46:16 -0800 (PST)
From: Roger Shimizu <rosh@debian.org>
Subject: [PATCH v2 0/3] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini
 PC G1 IoT
Date: Sat, 07 Feb 2026 02:45:25 -0800
Message-Id: <20260207-next-20260130_rosh-v2-0-548bbe0c7742@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMUXh2kC/x3MQQqAIBBA0avIrBPGSYK6SkRUTjUbDY0IxLsnL
 d/i/wyJo3CCQWWI/EiS4CuoUbCdiz9Yi6sGQuqQ0GjP761/mRbnGNKpHfWrXdDadrVQwyvyLu8
 /HadSPisYcylkAAAA
X-Change-ID: 20260201-next-20260130_rosh-d29b4a0443b4
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Roger Shimizu <rosh@debian.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1545; i=rosh@debian.org;
 h=from:subject:message-id; bh=5Q6TvLY/RbHZ1KdJAWlVdNsqJQkwIq+W6hCrtWZHAmw=;
 b=owEBbQKS/ZANAwAKAaR4aw2nAzSoAcsmYgBphxfodawckkbPVZV+WPdfXiL34OAMiuGpX/ogu
 vxC8Q87Yy6JAjMEAAEKAB0WIQQKMq2+gDmb5xY4WeykeGsNpwM0qAUCaYcX6AAKCRCkeGsNpwM0
 qJykD/9r0NSEHSEjVWqGtbMTKc+OnH4cGFPfv7Bkm+xETnzRZymAOk35Gx6NQEGDAZ5VH3HTyZ4
 jL4OseyZG6sBuJEg45JCgS3sxzhOWbNBvtNwjvT5UG6s/rNf3ZxVXfjMYLyiV3x+TYD3YkMzltM
 INwCc0MH+mLLKuPOrLovtk7aNMWGawufeYM+cz35pHZrtD6pPNm1EAtbtfsIvS88u24LSG24c0v
 kL7Rhhy0UJLg90QoW4Qw688B0XCJLeJH7eUpNX1GI+5BQmcsN9+gG6wDaGxWiBxFT4VzT05tcOu
 +kW2WZboAJ4b0u2U0qyvm1dQ43rfnDLbFvfLHMipcVXDGoULsbaPdBZH/VzylMJchQitSW6sq8u
 erXr9UAe34fVHq+G/y26Qpq25SCNDtc37Bn+9BT9ZL4Qk1IRwo+BenE7uGkuG5C9jbaPH3VNMC+
 UYLN5XKmpDCfcHSn4x+wiYTui6gx9SAN/gZ5ocDWwLsd3UmClVF7uG9KWgDKsLwJtLqxf7loTbc
 IYEXNq765MBhfpH5BAjyz/v74IHHkPSSPdhDMuy/bFxSuaGTOszeWjAO3IhQ3Ze+d7zM91Ysw4z
 ++1LhmrsdeYHL3SEDXG1C175VGpZnVpH8gbL6LWWMUynP/ksc5JCX8tnj+SOQY+A4nlC6qxbNrx
 Q5M8uwNRF6b3JHg==
X-Developer-Key: i=rosh@debian.org; a=openpgp;
 fpr=2FAFEBB52F5F5DCE5570D2E66C6ACD6417B3ACB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.969];
	DMARC_NA(0.00)[debian.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-263575-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 92D151059CF
X-Rspamd-Action: no action

Thundercomm AI MiniPC G1 IoT is single board computer with
AI capability based on Qualcomm QCS6490 platform.

This device tree is confirmed to work as below:
- GPU
- HDMI output port
- PCIe M.2 port (for external Wi-Fi or 5G connectivity)
- UART / serial console port
- UFS
- USB Type-C port, with Display Port

Signed-off-by: Roger Shimizu <rosh@debian.org>
---
Changes in v2:
- Add cover letter. v1 was merely one patch, and now there're three.
- Add dt-bindings for this board.
- Rename regulator to be consistent with other names.
- Update regulator voltage by cross check.
- Sort order of nodes.
- Move usb-role-switch property for usb_1 node to kodiak.dtsi.
- Remove items already defined in kodiak.dtsi and other dtsi files.
- Link to v1: https://lore.kernel.org/all/6cd569ad19ae8efb5f4244b3aa185754@gmail.com/

---
Roger Shimizu (3):
      dt-bindings: arm: qcom: Add Thundercomm AI Mini PC G1 IoT
      arm64: dts: qcom: kodiak: Add missing usb-role-switch property
      arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT

 Documentation/devicetree/bindings/arm/qcom.yaml    |    1 +
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 arch/arm64/boot/dts/qcom/kodiak.dtsi               |    1 +
 .../dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts  | 1093 ++++++++++++++++++++
 4 files changed, 1096 insertions(+)
---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20260201-next-20260130_rosh-d29b4a0443b4

Best regards,
-- 
Roger Shimizu <rosh@debian.org>


