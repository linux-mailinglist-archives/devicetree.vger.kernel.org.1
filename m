Return-Path: <devicetree+bounces-250230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E27ECE70EA
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EFFE301E6C9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0585A324719;
	Mon, 29 Dec 2025 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VzoJF2j/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D7zY78IR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAB631ED70
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767018502; cv=none; b=OeLvsnsFgIlo+hGgDqqLrt4yvlJQ3SC+M1zUcbNtmhP/kogCbC2m63R+YzyxOoqOy85b0CaQ9Hsp+I9a5+kK4I2pLlvlFRzBXL/KBY6Jg0a7NAawGN17E3ziAz+pgcbGG4v9YmgBzcpqeUSrH7bAAO38YIZKw5aIMMwnauKnfNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767018502; c=relaxed/simple;
	bh=cavGUb2fhEE0stVT0A29NxXSEWD3MbzE6HxUvn+msn4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=u8KgOCu/EUkN29MD4u6ycd3fT57z64W8nhyiqtGEzZy4GTVnBKPcK6zTAFAyi9eWABRKrmKynbssntXiJPo6WmW+65+9ivjzpZndU9Kgkt8GF8Xozw+78aiYv7B60GQX3a6nsh4s/KrBPf8jfmj5BelXR08FGOvYRxGkA1do+0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VzoJF2j/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D7zY78IR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA5IMk112781
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 14:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Y2gNxmAsXOe0J3MpZt2ABHL11q8rsOEV4L8
	AhUoJtZs=; b=VzoJF2j/uYBOvDry63IyT6q4YCiqTrzYuapvpwbQt7UboJCAoJV
	nCJWyUfjp/NbYwe4uhlvFNRFyCi9IKAeABHS5nq1SnscteD3KlQnjYBUqTlS+ypO
	tgjtWAwMkX1l0wyB8D+zj4lGsOiU6B8I/vocAe1XkTjQGs+WaWrRJhV59fQ2NW0t
	Obseqq/EnWl9nhoj1onJZtc8GVzQ223QoSuHufk6zDmVY/GGPBDx+gL30GfBlh4T
	rz/UPTwpFKF/t3u8pl63kcvR6+2GkkMFwuYFwvMvwPrt6ZGPVj0htRoFg7cJY/zK
	FzVrQkRCgvUErL7vYHbPHBlWrcTpWtiEPFQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc9v1tkp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 14:28:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2f0be2cf0so3421554785a.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767018493; x=1767623293; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y2gNxmAsXOe0J3MpZt2ABHL11q8rsOEV4L8AhUoJtZs=;
        b=D7zY78IRwK2KVyEiXuxvZgi80nLGDqa6oT8gGNXC9uutP3fcH8cLkcHKzQbl8uQ4hf
         XKZOzSlR4rh7i1skJ2M0mS92yH3TOC4Az+IKvWGdeObKgd1EZHKC5EJ+PXmg/gU1J3W/
         0BMr7OBirt2ChEuGzNSnGUOlKqxiU5Z7Bzzvcj0TCVahEpWgGEhzWvYz78MVEPezHOzx
         a77H/Z4MN+6tgoeQpGoRBYZpMsyPS3y9slmzKVZEI5Gy3WcbC20LYDcjjdYbmkr0c6B/
         msrUNhm29hvvwJJYHSr6silr7bidzRtDo4pMR7xh2ucFdxBiAToSR0Mke5TSwSqAmhu0
         KhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767018493; x=1767623293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2gNxmAsXOe0J3MpZt2ABHL11q8rsOEV4L8AhUoJtZs=;
        b=qCn0GEf6CBZUK1shvv5IWi07KXLkMnTEiw7ce/brLkSRdcoMxybENe8IgmyQ4h3uuF
         oPD1w2ZJ6aVrG0UtD91Idu0sBYO1uxZF9m/5SDhHPDiX0EiVptDJltY1i3aG0mB0TeQW
         XRxidar5dUVXRJph9O4PjYfNRpeM1UTbZz02np7Rd+TAt6GvUwWKCa60tG3kbbfXOaR3
         M874MQyrkROP+DxCkLrjn25VOdQh6bFVY0sFEYvDzSPyJ4DQ9M5fVzfZJtbqwzObBpuP
         boO/2psIEKyrZLOGQTacrVanbtLyb2zMweO/1CYLAFq/d0p8BObMM6ysLueFlnsOqyYm
         Bu/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVc/4WKKad9mL/ednEYmb9JErJ5yy4YoZgZGTKsbLDqp0lZOM1r/ox2IHHX4mfvGg7O56RJ3z/MHqPw@vger.kernel.org
X-Gm-Message-State: AOJu0YyMbPblp/4KZr/Ydefmw5BUNk4F2BeXGvDZUXOtr+ZJwh/BSB8Z
	91/VGnCp+4YUF/tVPWNwjHiWsYVIxTZ8T0yoRBEmochxumYm9hioCw4E1HHxnqOehDIgVbRa2wy
	ebdxLmkFvh/mABLVJK6O0H1bB6HWHEFuhAChxj6fpyplPCnDIWeWkf3WLOO3Klnf2
X-Gm-Gg: AY/fxX5dNq/ekpAC4+fbZAKDkUJiOtz0bOA+Dnnm6txMe5raoDiXfKUnVDGYuqOw65C
	e0azMcRntNbagDcW4OX4giFLZzFn1k813L7cGHcA0P6GUa4I7UvuqrwxxJxQLFXCdLIh8qbubB+
	ZPdVwR+RL8s3RA8DrQZaVuRwtUc2JOF9vgawTFTjeYgW2nLWiH46SArI69LtKGMSyPYflgpEbDI
	9rYZ5eZkfAdrqkia2+ivPS6Qb3wNuFesxWWVr8lubczuFVan0PMYBehr8kD/2S5pvOH35dlaDse
	GctQOa73GJ1P26ZB7faH9+bL2vaO03yo7zovXBtKTERblXYbraJ6ET932aohptmA4D2bX8Qahon
	TRRJBBjflh+1rduDIOEWoezNJwg==
X-Received: by 2002:a05:620a:7001:b0:8b2:e666:713 with SMTP id af79cd13be357-8c08fc014e9mr4402229785a.42.1767018492986;
        Mon, 29 Dec 2025 06:28:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpfhou2F8tiGdaik+LUNeZ0OuiWZ+i6Un0IKT9IlqQs6M8sA6E3kSG6jA+estbVzhjTCBDvA==
X-Received: by 2002:a05:620a:7001:b0:8b2:e666:713 with SMTP id af79cd13be357-8c08fc014e9mr4402226585a.42.1767018492515;
        Mon, 29 Dec 2025 06:28:12 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0971ed98dsm2410619685a.31.2025.12.29.06.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 06:28:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH RFT] arm64: dts: qcom: sm6125-ginkgo: Fix missing msm-id subtype
Date: Mon, 29 Dec 2025 15:28:07 +0100
Message-ID: <20251229142806.241088-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=cavGUb2fhEE0stVT0A29NxXSEWD3MbzE6HxUvn+msn4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpUo/25dAVIXmnj/AGQoV1AthBIR7VTxcnNyfYk
 0MOCF2EWnqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVKP9gAKCRDBN2bmhouD
 19ByD/47sYEw1NvVgjliR+HKwBHTEmltyn5aS2lRPsOGsyy0f+R7gd7gcN8bYKGqKA3z1erUMC5
 L5dKplAhZlznFYbiCEbNhqneuxn1+JOP3K/ug6usoD7OjjLoiJNNciOhYvEuKWIvYoV3V03Lo3J
 D4u/k7O6hK8yDKm6ewzVmsLd5acNUhC1Fhl5wTznjYPibEyQGVr1lgzW//b/W9/ovnwpcyz2Ue8
 drnBpvojKouJBB3QQ3PMbVswBymw8IZw3QeBz/TSbDlzXXvpktZcPP/DP1FX+oY2tP2srKAUFWD
 9ZtbrP+ZCVNBHlVUwzyx0KlGDNfkzB45X52o40NiFq2TFLa0sNXNSWs7BRNXdJwZD80i5i+FKO5
 X3vF3dokDgC6cE3esJmFBgAU12T8baSZ9ChgnGaunJL5GWgmfZaC/XFuobhEQHHuM58VLIEQcU1
 C1SvBpytXRLe3pm2jBBWyjFG024zZ8uxs8sOSFlH12b600WVdqeQ6tl8z+68/ctZtE/Cde39UV8
 FYblt3vf2kC3nNtdEXKJh1cs+lEMXy22L5464A4snQxNzE4FiAzK7TPNV+r+KembNGtBGSqYomO
 WHICsCBzCr5BPSI1GLWr6lE9wlp/1CE7EvHvTivrpuMr3GoVI77PO/nkVBcgMvIeqaEjYPwq5zG 2O/rfDVw+2Fkzmw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NNIpeJeMXcF8oOFLSS0hKknQ_KB7SJVO
X-Authority-Analysis: v=2.4 cv=R/sO2NRX c=1 sm=1 tr=0 ts=69528ffd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NYfFl4gwGCMNp_B8HwIA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEzNCBTYWx0ZWRfXxAJll5ziHZ2n
 nAR/KZaYJslykEI5OFGZkS1k3t28xEZQNt5es3GRZ6M+8lwsc2DIFJABP3Zzw2PdlqDsDLeXJC+
 ffW2VHmCJN8FacviXBHxyeDax9BOlNVJEL7J6beymlqOwaUWYnfFA+TVI0KyIz9I7VeJpHQowLL
 y2AeY4lveL151UK914RFvMbMuQj20QoMyVaAEDBc8biNckvG+kEzvmecTDiEuOg7j2cFe4C4JxH
 3HpuOeOS5fk/Ibc/ISmcrTll22ThB7mRB0UPW01t5dROTnmW+XmdfhxiBaWpOqHpiPxSNpMxhTP
 2jrZXv/D3JsbYioOkgplY26iOCb9oWr7AysUW64Bmw5RFxjDZvxNjypFD+T9b6NFqIN27wVPIe5
 8rHxcw/DAg28c4jicMrrLffEr+a7IfopqvKgOE/ao6auBxYVLFeyGitpIH7wBSdI1fwcmp+DUc1
 OdXk2I/oGcbXPtp5tug==
X-Proofpoint-ORIG-GUID: NNIpeJeMXcF8oOFLSS0hKknQ_KB7SJVO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290134

qcom,msm-id property must consist of two numbers, where the second
number is the subtype, as reported by dtbs_check:

  sm6125-xiaomi-ginkgo.dtb: / (xiaomi,ginkgo): qcom,msm-id:0: [394] is too short

Xiaomi vendor DTS for Trinket IDP and QRD boards uses value of 0x10000,
so put it here as well.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
index 68a237215bd1..6b68e391cf3e 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
@@ -19,7 +19,7 @@ / {
 	chassis-type = "handset";
 
 	/* required for bootloader to select correct board */
-	qcom,msm-id = <QCOM_ID_SM6125>;
+	qcom,msm-id = <QCOM_ID_SM6125 0x10000>;
 	qcom,board-id = <22 0>;
 
 	chosen {
-- 
2.51.0


