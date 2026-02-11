Return-Path: <devicetree+bounces-264678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAJyK89LjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:28:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A5E122B9A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A750F30194A8
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00558355816;
	Wed, 11 Feb 2026 09:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hKB5AI45";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EOZBP/MZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25061338581
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770802091; cv=none; b=Es841inHbRkfdTfO0fsHid0aNH1VANtigrpFlrINRifccDPK5uBhRwsE7z7rs/EV13y1ZEe6/Ox05D6GL824/yy1FaduuQBeEGPhafIui1oFERYWjsR/yy3PjeBcSFkpZ5kNscVSkNuVxqQp6uNDyDoyrWKbFLJum0JEE47wBQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770802091; c=relaxed/simple;
	bh=Ux46ooQNG2N0IqXAB0C7HAKk8IgkHoiiBz6dDkqTiqw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=RcnhJmet+Z4YhKCVrPEYyX9KPUWus+Gr+QD7g/ezHp4WoGzrR+BVTYhoBwAZNWJL8AOsikSp8pY14N9ePW3DYl02IYT1ixDPaxBz5+lTB6ry9c9c1hHrQTTgM9m1DXWiqxUpdHpOUWoDCAtERMSl/d2pI7W66J/jUGeGHG7AoCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hKB5AI45; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EOZBP/MZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B2O5Xj2943611
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:28:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=T1k8cXYpRbX9I1IUe7Z1Ib
	ViSZcj6JbLFth/vF0xRP8=; b=hKB5AI45fWtTyK2LidM6yRqcvjabI/Dybx6E10
	LobahJIv/r0I98osWJmXGDzaRKKePsOPMk8+I3Cq3hDtRKkPi5l5kKr2brgQHFl1
	rg/yWXHfq+ROfgdRqqUa6Ha02xnyeQ6UG1tDKRWw1loPOwQsKeH+ptHXju0BAG4n
	L8rMpiI/NHxWNQ5VkBGunOpnKvLp+8o5YJehV9UhHnc2ZDDxtEvPprcatpM/G3O9
	FGIv+DVbnX+/fo7X7Nt0xoB7AQWFhCl5gX9e3U30+ESBivcCGlvutM67gN1mkqeQ
	traEyX9ORNcsgvnmldRkY3qq0BPnRui4G5Aj/9O+EfBu69vg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c88r72u7g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:28:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50335bd75bdso162594981cf.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770802088; x=1771406888; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T1k8cXYpRbX9I1IUe7Z1IbViSZcj6JbLFth/vF0xRP8=;
        b=EOZBP/MZdhNhp1pevzsz90Xn1ps+h5RRne681UFtri+9hUYKHenAZQKDBQjOdtccHQ
         A169FNC9j0DeZM/PmXRULh0492yziLMp2PjmtMnxl3PqwRJGzvn9Z4NUlZwiOIsaabux
         9ON/p0O2C4wKU6fR5wQhiJRCwHXjKhAjkSD2qaLl+tp/kJ5k+EBLYsM+bvbbzj1NTsDL
         JYUT4Qev4F5wo5P2gQuEnwuscNAZH/uoJ5fbeQIVkmlwCxyLzy/fKp8uVnoKkcrE4PSG
         TA/weEHtI8OQz4pvl9e0MCiLKLlRWMGshzqiBd5fAmHFOIflcLL4aXBYj12rWLu5NZl0
         izZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770802088; x=1771406888;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1k8cXYpRbX9I1IUe7Z1IbViSZcj6JbLFth/vF0xRP8=;
        b=K3GTWMexWzM5jwqghwGiRTgtThUWri6Dth9b785SnZk3MfTt9dru6Gvi80Krro3szz
         RNADeqhT6YVTheDB9WM0rB7KYYFwSd7x9iQfSak7pTKDaLLJJ413oh7Xd4yqXT+jlsoC
         7UrLhykUmw8MP4qaQDBQ2pJtk4zsrWwJtgMMY51xEJbzSCxhsVCthMD54c28PdzeIQaM
         aRsv0i5rqdu/4Nzo6xOplM7VV4wUtY0lL4i5iMPR6P9SQKCdl0ABHhE+IPiQt89XBWbH
         Dk76hAdG1zoe/oFevNIaMFvI9GwIWV48O88gCBvMmOdJ6m7DTG3HTY59DMI7kFC/AWdd
         6gjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5njYnVLd9N7bdKb4AoG9qbwImDDavil9AnQi9hCWlK56NmGwPBhRjw/7vp/MzrJEnOxfOiSDpVwQv@vger.kernel.org
X-Gm-Message-State: AOJu0YxLFxS9Pn46ZfR8GDXunST8r82Bo1dpsmc/6R46ovnLTFkvJHUD
	TbMCEY5ve9YbIwMs21U4zm2w7ZfUNkYyUUvKfC8jsWVF1y+PbaWaGiPZDTVemR32WRSkuoue6S1
	Ewl1anEcv/ZB8knOMMM51QUCqXdjyRotqhhzCwskyVhhPLHjK7zh4ZNRsG966UEM+
X-Gm-Gg: AZuq6aKa+kzSt+Eg3YLNXJHrDLZ4lwTQiFXwvXkn5nK28XwHFMGpaW1g1kP2YbQSxZO
	mLYlz3O+9zsDz+ow2tjIVm8c9rFbGNYCF29Q1lGTi126t+GF+X0CTsOloKR3HoW6vM5z4RGXeQl
	dz1hAQ4u2U8eY7v1uQ6GzySLlggHHJd82RqVvubrgHjsPjJNcCkM1JyZ/ylKRla22KwOrrqM1wM
	yWaCahSejnorOC0JT3/fR6eiSpWPDxWkseNr1uXq24UD/o3PRQS00J31V0hPzmj0yM6P2J/0FBY
	6bMz6TaCKgeve1T1+3+rKVJHluPPwSr++qL0jqq12glqTShbqQkl9GKBb5BKIYrsrOs7SbO5vBE
	XBZzMNxmynAQGZe1RZ7gXt9ihgEw2kBJFhEszQu2FrPw009lUOYIhqKW5raKo0KnFP1KeMjCe6r
	N6bzF5dBhXCygtw9fIctkXu+LR5LOBVxiom2U=
X-Received: by 2002:a05:622a:454:b0:4ff:c17f:726 with SMTP id d75a77b69052e-5068101e3cbmr23666531cf.15.1770802088185;
        Wed, 11 Feb 2026 01:28:08 -0800 (PST)
X-Received: by 2002:a05:622a:454:b0:4ff:c17f:726 with SMTP id d75a77b69052e-5068101e3cbmr23666411cf.15.1770802087728;
        Wed, 11 Feb 2026 01:28:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f568737sm223639e87.21.2026.02.11.01.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:28:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 11:28:06 +0200
Subject: [PATCH] arm64: dts: qcom: qrb2210-arduino-imola: describe DSI / DP
 bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-uno-q-anx7625-v1-1-677bbcf63668@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKVLjGkC/x3MQQqAIBBA0avIrBvQiSy6SrSQGms2VkoRiHdPW
 r7F/xkSR+EEo8oQ+ZEkR6gwjYJld2FjlLUaSJPVZAze4cALXXh7Sx2S9YN3Q2v14qA2Z2Qv7/+
 b5lI+RGQK4F8AAAA=
X-Change-ID: 20260211-uno-q-anx7625-26f8fa8360ca
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Riccardo Mereu <r.mereu@arduino.cc>,
        Martino Facchin <m.facchin@arduino.cc>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4674;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Ux46ooQNG2N0IqXAB0C7HAKk8IgkHoiiBz6dDkqTiqw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpjEumC+Ln8FYy5BH3cY+7BZGb8ttr7k7r6jWVB
 wdDA1jrQsCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYxLpgAKCRCLPIo+Aiko
 1e09B/0Z4YDCkhpuR5x7taYl8K1lFufphgP9SaL55RScgIELmxO89E8aoQs3Y3vt56J2b++lWFZ
 xUIaMvmXrJ5Fl8hxVS2VvB233mZFpfqqodOw9gMbP5GXMzjOu66YZVqX+jZBiLBZ89L8mNEgBeO
 SlkoUsFlcZOwPpQLZiV3GBTMLgKrrth+exCo39rxpXbJBc1PTeuNekeoPgdgBp1vcqeU3A97fRZ
 8fjrewulRu9OkDAT8fhFihqTjEYBtZx+evq4auMpivyxveQbmjAM8BnSmh3e6ls6Hj9BFjUynRC
 WLXYwOwm62BSACvl8k3fhe4WSQhxBgNikjgO6mxYTuoUjpxD
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: AMHte6l16l6DOd4KZ4V9SsVzHxsxxCmd
X-Authority-Analysis: v=2.4 cv=YaywJgRf c=1 sm=1 tr=0 ts=698c4ba9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=BI8rhESxQhY5hPGjgb8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3NyBTYWx0ZWRfX8X5FDL2QlYPi
 1d4TsbkllkO4Mw0irAg7iJSoeuqJJFmllgtuWaiLnJaPzrH0rrHszTDkdu6QTV+zAniqeQ3uCMs
 Fp6LHRFPCFgeBNvS/0PeOMf4VB2CPZkGRS+ckmTuC3GiXQ9j/lT8u65Smo96ToaVRwMKuDEy7ZA
 CQNdkJCw0nBTE9F0PCeJBInCd1zpfYvXUYFzy5CIgC+Fg9bslhm4iaarHZMPmAK6ip4LdAd+QVO
 kGZifEG3JUQ6MkcU4+qfFitHj+lB4wW3OlYOsNb+IPZAEb5/NMvl6Wq4ezPWmvwPPbxvk+WjVHe
 WEs5irE7MBysrlc2wlXLqo8ZG+LHzk8377TLCsrHAulBGEuc3N7hhQGwuGkzsX00Igo0OJRQHQl
 Ae//qF41gsTLyV+M+GtIh2uJk7SHAUQDpJR7T6zHNEH6qUURUsW7SsO+udN75A5+RmIIRI0iOhB
 qiY0GO/Qf5c9e7RGGgQ==
X-Proofpoint-GUID: AMHte6l16l6DOd4KZ4V9SsVzHxsxxCmd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[0.0.0.0:server fail,arduino.cc:server fail,oss.qualcomm.com:server fail,0.0.0.58:server fail,sin.lore.kernel.org:server fail,qualcomm.com:server fail,0.0.0.1:server fail];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264678-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 71A5E122B9A
X-Rspamd-Action: no action

Aruino Uno-Q uses Analogix ANX7625 DSI-to-DP bridge to convert DSI
signals to the connected USB-C DisplayPort dongles. Decribe the chip,
USB-C connector and routing of USB and display signals.

Co-developed-by: Martino Facchin <m.facchin@arduino.cc>
Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Note, to function correctly this patch depends on several patch series,
fixing the ANX7625 driver:

- https://lore.kernel.org/r/20251218151307.95491-1-loic.poulain@oss.qualcomm.com/
  (part of 7.0-rc1)

- https://lore.kernel.org/r/20260121-anx7625-typec-v2-0-d14f31256a17@oss.qualcomm.com/
  (part of drm-misc-next, to be landed in 7.1)

- https://lore.kernel.org/r/20260211-anx7625-fix-pd-v1-1-1dd31451b06f@oss.qualcomm.com/
  (recently submitted, hopefully to land in 7.1)
---
 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts | 112 +++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
index 197ab6eb1666..ba3f0c74e814 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/usb/pd.h>
 #include "agatti.dtsi"
 #include "pm4125.dtsi"
 
@@ -109,6 +110,16 @@ multi-led {
 		leds = <&ledr>, <&ledg>, <&ledb>;
 	};
 
+	vreg_anx_30: regulator-anx-30 {
+		/* ANX7625 VDD3 */
+		compatible = "regulator-fixed";
+		regulator-name = "anx30";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	/* PM4125 charger out, supplied by VBAT */
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
@@ -142,6 +153,83 @@ &i2c1 {
 	clock-frequency = <100000>;
 
 	status = "okay";
+
+	anx7625: encoder@58 {
+		compatible = "analogix,anx7625";
+		reg = <0x58>;
+		interrupts-extended = <&tlmm 81 IRQ_TYPE_EDGE_FALLING>;
+		vdd10-supply = <&pm4125_l11>;
+		vdd18-supply = <&pm4125_l15>;
+		vdd33-supply = <&vreg_anx_30>;
+		analogix,audio-enable;
+		analogix,lane0-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
+		analogix,lane1-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
+
+		pinctrl-0 = <&anx7625_int_pin>, <&anx7625_cable_det_pin>;
+
+		connector {
+			compatible = "usb-c-connector";
+			power-role = "sink";
+			data-role = "dual";
+			try-power-role = "sink";
+
+			pd-revision = /bits/ 8 <0x03 0x00 0x00 0x00>;
+			op-sink-microwatt = <15000000>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 3000)>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					anx_hs_in: endpoint {
+						remote-endpoint = <&usb_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					anx_ss_in: endpoint {
+						remote-endpoint = <&usb_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				anx_dsi0_in: endpoint {
+					remote-endpoint = <&mdss_dsi0_out>;
+					data-lanes = <0 1 2 3>;
+				};
+			};
+		};
+	};
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&pm4125_l5>;
+
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&anx_dsi0_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi0_phy {
+	status = "okay";
 };
 
 &pm4125_vbus {
@@ -361,6 +449,22 @@ key_vold_n: key-vold-n-state {
 		output-disable;
 	};
 
+	anx7625_cable_det_pin: anx7625-cable-det-pins-state {
+		pins = "gpio46";
+		function = "gpio";
+		drive-strength = <16>;
+		output-disable;
+		bias-pull-up;
+	};
+
+	anx7625_int_pin: anx7625-int-pins-state {
+		pins = "gpio81";
+		function = "gpio";
+		drive-strength = <16>;
+		output-disable;
+		bias-pull-up;
+	};
+
 	key_volp_n: key-volp-n-state {
 		pins = "gpio96";
 		function = "gpio";
@@ -428,6 +532,10 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3_hs {
+	remote-endpoint = <&anx_hs_in>;
+};
+
 &usb_hsphy {
 	vdd-supply = <&pm4125_l12>;
 	vdda-pll-supply = <&pm4125_l13>;
@@ -443,6 +551,10 @@ &usb_qmpphy {
 	status = "okay";
 };
 
+&usb_qmpphy_out {
+	remote-endpoint = <&anx_ss_in>;
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
 	vdd-1.8-xo-supply = <&pm4125_l13>;

---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20260211-uno-q-anx7625-26f8fa8360ca

Best regards,
-- 
With best wishes
Dmitry


