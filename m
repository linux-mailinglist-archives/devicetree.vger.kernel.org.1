Return-Path: <devicetree+bounces-267499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLhODrZ0nGlrHwQAu9opvQ
	(envelope-from <devicetree+bounces-267499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:39:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2F3178DBC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:39:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07AB3306C7CE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8E52F5498;
	Mon, 23 Feb 2026 15:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WtgeyQ8C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IvjLZsOk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82262EDD6C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771861079; cv=none; b=DGYaUbT+es9NPLtEL34s+zLC7Moy6IiWGY4zwlOElSzeydtAapC4fmz1qwVSSa43hVOHO64nj4w1jgoMIY2inreULbjSVzMY3D9Jheii5NdSBdiNgriuDSO1DVmYaKq9WZqwPRwPWkHoR5bzCTR1RVsUIJyPz0J00YRYPfxdLfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771861079; c=relaxed/simple;
	bh=EoCXFpUebrCB3eLLljmtB175b7eB89tb2C5XolScFBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y/ccX5oaPdDfNgzJdv3FDCPab5abNJaJtKaJlgjNKQAbaPoEdcehxn7zK2lHuVbYCnsiLx2WyL40Mrg/tA1JN5tlVSg9uFelPWo/hkCplL7DJYbUjoOCrAl3boEq4J8cseU+f13zqxZ9k8/lQIFCGH/4nKWPbvEQxuviZ/GibJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WtgeyQ8C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IvjLZsOk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N9ucD02916725
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:37:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=; b=WtgeyQ8CH4h/8SLK
	8FxD/Ygsel5q/trsE/FU1hxe5ez2PuqdZj7IgN7EpshLWYejux8TP+tSVZ8/c6dN
	kuwPuVFXbqgI+LkcgqEbHWh3TiBDTTyJBbTgNRfCal6Tg7opiPG/2aW+JvDlgv+C
	fOW9ycqpN4QFkqpqtYz54JfNXLAeCKsNj35gK/uG7OJ11qw1XzyaVXgA0sq/rfnP
	pKqlwABgRiLcYCOmKq5/SP6nBxhQzPRC9Zx1zH6uAfQQnnn4fxP1JLQi7ZbNMp/H
	EcUiLA8ky+ZGRIIfzVt9evYJjoWuUk86pU5UV6FK21PYKenehMedHDWjiH0MwFCD
	/sH62Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vgwb57-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:37:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3fae6f60so5596068485a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771861077; x=1772465877; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=;
        b=IvjLZsOkF298/AW5ks1EsFHkX4imXktLevc2brw2aOM326MPOgswgDxGPbtqBB0cmD
         LUcfIU1z+6kK8VNUmdVkLT7Wrrbv5aKJ82/cd0fRtn6ASw3Yp8Wv00NyXWRy2NxXAsQT
         EXbdDZUisUBLpL050sNdAcf5dWG0BBAy9eljbVMDJVe6aQh69AwMcaZhyX7MyThPoPQA
         JugVpSMRCQuim6ybKViN1EO/J8pcYvR0pnsb4QLevMfWRK0mSK6kc5F/e+mRuK8cHL9H
         /xIvOW4qkw+oJmxRQirR5fbJ8iT5PyU+5KYxjLC6gqiroI5NpMiIUXDcLRZN9SkTGKa/
         QtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771861077; x=1772465877;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=;
        b=SG3f3SXm57NsykwoVtXpYx8RzIAT3GLwE4Jl7/x7TKYTc6QIBzszWK2AZMmqoABLBI
         4h/GC9ZlsE/sQCtfqll3AeAFiU/PRAU4s3Iu06MQQR6mEhwthC374bPZIiIAuizKuwQo
         syB6unI6Vh/bql6gpv8Qi+LCBfrmcQ2sZKuQCh1+JM3YphjtOZy9mKa2XeSEJTsZZ8Ya
         hGbaM8BDAP6G/IE7BFDB+1lHxBEbfZiTdgDCmJz3zLxoTxLLQ0kN7WxjwucAkqG5M1Ak
         9vXim+6xQlOSPAMSftP7y2yWW1gPrx76bY+JEVOsuxWPC4LfFrrDlanH4ipx8VJVsIUZ
         Q+zA==
X-Forwarded-Encrypted: i=1; AJvYcCUyVHqmjqVL9Q+0V6kLNIWwHU5sAMA/ktGBtzyfQpjux0Tbqte4Ek5BFxPCtCMO9/L0JjkhZ8ROSbhQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzjdyqV9JHkk49aNLYcChZCDWr1gjHJlV+71SPm7RXOVPIJkyNV
	qxq2nfwqGCkvv/bslSMC9ZxIE0WzYBEVIA/iFk2prNp6TLhi21eVtvOk/kaZbgECNmv6lYZZmtl
	wZhtt0CEi+7RnF+CT4d16do2ZEzIkVhgNEmUcRJ3iILGO1tHUxhN/y3OVhnhbrWIz
X-Gm-Gg: AZuq6aKReoyAaVcvN5sVPQWyvEnEWiV14wJ3jEjHTB2RItaVbZ+ts+9+swnyJDjgfDe
	VYxG4etud7/Tjsri8tIm4ckQM6bi4xZAd66z+LGgXG0bpLQu7i1pLMqbsKgNI5bLvrfX3Yq8Sma
	LVV6I4W65YRHBSJEUZYJoK4pUuoOCZb5+KIvziVjT0HAwDx2tdlOOstjtwbJmmOcOi4fjyIAPR5
	qIjNZcqUev0gPGgkOQAEe2SxSye6n4dPddmiXxCKP+zOj262vV1xnYBRzKR3YNCyUZz3T/lawPM
	iJp+/M0EIeWqk5pSU+VTedXqHrc8ERO8S53rF9SEwv+cojeMTZBVuBZHpn87Es95bH4O0kz6QQJ
	GDHZLELv5CfIN9iKVRQ+6ccAHzmkINA==
X-Received: by 2002:a05:620a:7084:b0:8cb:5c90:dd6f with SMTP id af79cd13be357-8cb7bfe78d2mr1824774385a.32.1771861076937;
        Mon, 23 Feb 2026 07:37:56 -0800 (PST)
X-Received: by 2002:a05:620a:7084:b0:8cb:5c90:dd6f with SMTP id af79cd13be357-8cb7bfe78d2mr1824768585a.32.1771861076381;
        Mon, 23 Feb 2026 07:37:56 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c96csm21880679f8f.30.2026.02.23.07.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 07:37:55 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 17:37:43 +0200
Subject: [PATCH RFT v2 1/3] dt-bindings: usb: qcom,dwc3: Allow high-speed
 interrupt on Glymur, Hamoa and Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-dts-qcom-glymur-add-usb-support-v2-1-f4e0f38db21d@oss.qualcomm.com>
References: <20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com>
In-Reply-To: <20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1076;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=EoCXFpUebrCB3eLLljmtB175b7eB89tb2C5XolScFBU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnHRNvDJNuSOOU8Moknm8nCyh463f6N4qISFfm
 l1Ni1fNSm+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZx0TQAKCRAbX0TJAJUV
 Vh2cEACSzKJZfc2msIEgk0z9fRaAfjmLOPKd2Hglx4+YIOL1fM5X1titesdT3hGKrX2MC8CH9Q4
 Xka0RPlQ7wqTkyIppmQSPDbNwr6GL0JRoaaAIWSiQg4zXyfAo/LW7XAex716XC+I5eszAKJWSHN
 uBK1Sp+GTQYFZpoSpgH/O3nUnbt3lmVum44d458lCUs42eNL9wCmzAQNswW84GCf5lE5sXIlPcw
 BYKDkJuQlTLvJD2PqN2zpZcFFmBc4+Rc5cQMnWRQBWRbctRC6OqHf/4Xd2dPwiOru77uEwm58kd
 K9F+8LAsTNWZvmroTiXXadNBYZM0pDJNmYqpb4HpO35o+NYJjy1qxZmQqDKF7kEOlDRQVK410l2
 qI6Dj6n2yOMuTLwkUFFwYFtSIACGXVkfjXF4truCs0uOSSIF02YjqXdeV30Y21qHUkbQffJJfBW
 UKElvMTrIZhdj6WRQ8eXyzOIvGOYtmhmU80qCm9uoXHfA0pGR6jAbkD/xzLrN4UYL+dnY94rVCe
 t/eEtUyc6DtxkJBr3KbHxl1ROM1KKBzn6vsir5dGusijex2Oe8Xo+m0HytG+KoKyzuEmTH5hgMm
 7sroz6skljuMldXtutk6oLoq3+FJGQ4Mes7yxFkA0LO0Pv6cUkPTv2trG3gOLA8ge3azH44BHYl
 mlQkbct/5oBzylg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDEzMyBTYWx0ZWRfX5pyhk0P8w0BA
 IR0syip1qT2JnaGQnqPfH7SFR4l4qw2CqdR/kgcR/ud+noM+aJfMskzuzSUUgu81/TRWfKTio1b
 WRKQN0WPIMXFfjjg5loUYEcQUIlseL606n6r6CExzx+5EKpywaHc8rxDA5PppvA6AgU/nZtFkjj
 Ofx2CoGhqUICIXnYfaPN/r3vRJ59utOIGrM+v7zdyn9WL8wOaGgQjqV+R0sUQyMf6dwLUyPsRI5
 7DyIrLR/ZzxQ69jAlo705aQPT2d6mRhVBz5aCUm7a0z+AVobPEuSEO6t4YYP9DnST5+7SgLJGW2
 cEKrNIM0KA32A0t8TQrV1anox9y8Riu2AW9K08hlGK8QvEErzqDgdTwVtJ82caiBU8e4nWgatyt
 v0KVEjekscP/k+L8s9pj57lBvis0GxkzLGdvHV1z+sz0Yb3PUjDE+Hbq3FBd7gI6Cim7XybS3rF
 V++Vk4Xd4cIUhEs+17w==
X-Authority-Analysis: v=2.4 cv=W+A1lBWk c=1 sm=1 tr=0 ts=699c7456 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vx3hbeaYKRubAM7LXykA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: FDJybyLIMa3fubx6128t5xxW9sU6cFSX
X-Proofpoint-ORIG-GUID: FDJybyLIMa3fubx6128t5xxW9sU6cFSX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267499-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D2F3178DBC
X-Rspamd-Action: no action

Some of the controllers found of these platforms can be tied up to a
single high-speed PHY, basically rendering them as USB 2.0 controllers.
So in this case, the interrupt to the Synopsys DesignWare Core is coming
from the high-speed PHY, so allow the interrupt to reflect that.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 7d784a648b7d..f879e2e104c4 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -500,7 +500,7 @@ allOf:
             - const: pwr_event
             - const: dp_hs_phy_irq
             - const: dm_hs_phy_irq
-            - const: ss_phy_irq
+            - enum: [hs_phy_irq, ss_phy_irq]
 
   - if:
       properties:

-- 
2.48.1


