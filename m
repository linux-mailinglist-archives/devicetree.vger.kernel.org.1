Return-Path: <devicetree+bounces-265371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLobLWIzj2k+MQEAu9opvQ
	(envelope-from <devicetree+bounces-265371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:21:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70E13708C
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C5FE3018281
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37A035EDDF;
	Fri, 13 Feb 2026 14:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="uz+M8SLj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC2522332E
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770992472; cv=none; b=Yw71gGLW0XwyGydxHnZbrpWayvttP2/zny2XWZGAFtxjGfv2fbXBG/ffAVDho7CkjGwmQkhW84N3NGjRmg/iq3OU98/Jpt9IKLgk+Atw7Z5kOrOjCXeYYkdG8EkQrNoDMI1jybRdqzdr20I5raZXlGarD/fMFSV/5hb6T7JX8aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770992472; c=relaxed/simple;
	bh=PaJDyaKNMJRWk4L74IdB8CguRyGRaIr/tCoXLPzHYng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KF1CTdnvMCrxdc+icdvLu44/89YlReOAuo2vlyBBWU9WBLlsj6isdt2qt4shgTeCSIVHz/yd8MVAHAFoChGosts9NYddyeFHjnoflDyFXxf5tnL7Yw4ZHWAqE2mB3YAA4eThT+l35pPit+BXlqfrHz959U9lANFf40xESOhoJ2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=uz+M8SLj; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b8f8f2106f1so127458966b.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 06:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770992469; x=1771597269; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2lNvGn/gAEy5rTVgtFUfiU9KyxO9dt/WiWx7gXnF/wQ=;
        b=uz+M8SLj3xATVu/YOYuhviEGC6ogRgqDnQbRDM6YdS9+vr9D0SvJlWteCKGBX+NYZ1
         MKRKH9b9d9ebU/jVj5OouZVhI3oEET7U60tmao/89BnCW4wkYLqhpRuukHs69qS77JUD
         caalCLlxP1e7wqdXB/L0f4NcIAfjYungjIq4/EgLjrlQ0oH129MPXIYCp3ZXMPutRgpP
         Thz5rovYvYnGC7XADkxnZFIXYJ3wPBVlfO2OnmOdQP+kAFLF52YnhRvxJZOcnlMTLXgL
         DX92X4zA1qyQX+ScBdRSwWNTWWC4ZO0N8H/ob7vGUGZcmXqGLPs44TI2v64OfKrtv9Hu
         nY2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770992469; x=1771597269;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2lNvGn/gAEy5rTVgtFUfiU9KyxO9dt/WiWx7gXnF/wQ=;
        b=g+2Xaal028FiuzwXH7T90xjWB41E1UHDSkMURMBkGPchOWQLtwXBgbCKsHnGOsURyi
         V4LGtHYNFt+HJ5H6LXKlZc8osm+HsJi/gOtmH8Ok4ubYqpVccsj0LP022ouk5tGaocr2
         2d4A6cy/n8Pgt6Ie8xd3zvhmg0q1XVAEWxZ1z4+PCLL9ZAdl8rcB5NEipRtJ+SQYHw43
         xTeo/hR/raujqcX2Drf9laaBz4KidzLvUh2lA6eXxg7Emy5PSpyNC2tNgU3Cyt0vRTKQ
         AjQnRwbz3cJgiNSr9jzjUjQLnpQaHDokmMuxF3RYJEXoi71/PqxUoorPIavvpPYoiiCz
         rMhw==
X-Forwarded-Encrypted: i=1; AJvYcCW6ZXZ6UFvI/NxUdq0Noaw1pMODQ526Z5VhnKe19wyLYw2FDMbnRJ31fmxlyOEusPr7aDo1+ORltM0n@vger.kernel.org
X-Gm-Message-State: AOJu0YzTVMsaRKvl9xutKgsmYPG8WyC948tDf8X7mS8S6X8+4rhY/dbL
	7hqJB8fXgpbKqgRmaD1J5Jz6cOuKx8JoIuB9qEE2lvQo4wefzCoGZfz7tIV09nBVscg=
X-Gm-Gg: AZuq6aIRzTCot8L3Qyg6sEfhC304P7jUq8fwoLcpm9g1rBrcOn6rB27dOxJ8hqer+C1
	vpHZXRHxKUwcBUV9vals5nTATSw8tezilAfnes8JgymniwGQbrNrG9IvK3VbVDbMS6wqwt8QHSw
	d2HiOgNHurme8KRtbCnPLJzsgc5R5lYW5O4L3++oZpDS28Qpn1kpu/h1L1u2HNRmL/gmEF/I08D
	0EJ4qCP5v6LDEDj5mnPj0q7Bu5F/r20SfsWxAzw1VYZ3kwMmCEK8RoE0pXDJ0bfu9WJ1H8Gbyba
	E0yoDywmcKbzQklmOGs0Bikx/vRb0fQKJ7pSMoXu8wRUGoYZgzBireXuBUs5Uqg3MTCk8iIbd8Y
	exTqbEWgRUz4ORMvPaTio6PycrM3aY0gjPIgkTTX4b2mcDarFVj2tkGMyEyFWWpbo9PM1o7xz/I
	NIBPvlL8qwNYDw6uYQJhPlzOuYDyP50h0TlQ0oPkTJ3dlMGvGfcZ3Lfh74+Uwx9maQIHTftp38l
	1tT
X-Received: by 2002:a17:907:9692:b0:b87:a0df:2f98 with SMTP id a640c23a62f3a-b8fb4672805mr106847666b.63.1770992469139;
        Fri, 13 Feb 2026 06:21:09 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f9d45e79asm130787166b.24.2026.02.13.06.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 06:21:08 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Feb 2026 15:21:06 +0100
Subject: [PATCH v2] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WOQQ6CMBBFr0Jm7RjaaAFX3sOwKGVqm0CLbSUYw
 t2tsHb5JnnvzwqRgqUIt2KFQLON1rsM/FSAMtI9CW2fGXjJRcmYQD0JNHIYMJKLPiArL43muq6
 4VJCtKZC2y158tAcHer1zOB1H6GQkVH4cbboVjpaEe5wzDj/B2Jh8+OwfzWw3/o7PDBmKhldXJ
 bq+Lpu7ljZMxjs65wVot237AnEmzH/jAAAA
X-Change-ID: 20260116-fp6-hall-sensor-1049f2f872ac
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770992468; l=2287;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=PaJDyaKNMJRWk4L74IdB8CguRyGRaIr/tCoXLPzHYng=;
 b=emdVErxPZvsDCPjFLjkK/Ib4DqAmZNg9hjAxRMoUzy1wy+86mc5SrhhyKAg08Rzttq9JlS+71
 djlXzxRZaZPAsK6yO5ZxWiEjMPHzgStUoYZyTtFkqODKDqxu9INg8G7
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265371-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email]
X-Rspamd-Queue-Id: 5E70E13708C
X-Rspamd-Action: no action

Add a node for the Hall Effect sensor, used to detect whether the Flip
Cover is closed or not.

The sensor is powered through vreg_l10b, so let's put a
regulator-always-on on that to make sure the sensor gets power.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
As pointed out in v1, this would preferably go via some vdd-supply to
gpio-keys, but this support does not exist yet.
---
Changes in v2:
- Add pinctrl for gpio70
- Link to v1: https://lore.kernel.org/r/20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 7629ceddde2a..bba327cc7a38 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -29,9 +29,19 @@ aliases {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		pinctrl-0 = <&volume_up_default>;
+		pinctrl-0 = <&volume_up_default>, <&hall_sensor_default>;
 		pinctrl-names = "default";
 
+		/* Powered by the always-on vreg_l10b */
+		event-hall-sensor {
+			label = "Hall Effect Sensor";
+			gpios = <&tlmm 70 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			linux,can-disable;
+			wakeup-source;
+		};
+
 		key-volume-up {
 			label = "Volume Up";
 			gpios = <&pm7550_gpios 6 GPIO_ACTIVE_LOW>;
@@ -316,6 +326,8 @@ vreg_l10b: ldo10 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			/* Hall sensor VDD */
+			regulator-always-on;
 		};
 
 		vreg_l11b: ldo11 {
@@ -807,6 +819,13 @@ sdc2_card_det_n: sdc2-card-det-state {
 		bias-pull-up;
 	};
 
+	hall_sensor_default: hall-sensor-default-state {
+		pins = "gpio70";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	pm8008_int_default: pm8008-int-default-state {
 		pins = "gpio125";
 		function = "gpio";

---
base-commit: 3daf23347bb5f4a375d0101ed29c97ce1a99721b
change-id: 20260116-fp6-hall-sensor-1049f2f872ac

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


