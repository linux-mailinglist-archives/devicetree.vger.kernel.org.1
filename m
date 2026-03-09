Return-Path: <devicetree+bounces-273114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DHWLAsvr2lzPQIAu9opvQ
	(envelope-from <devicetree+bounces-273114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:35:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEF0240E2A
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:35:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8C6B63011D60
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731CA41C30D;
	Mon,  9 Mar 2026 20:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbsU/+qv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hRvxRUr7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78BE41C0B4
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088438; cv=none; b=JpBn9boukKlxZ35WEzTuZ8Wlw4bnB3GEieTJGIC8WRlbmKdbpgK7Eco4afm0GLw8Er+cV3F+9VS6lhJPIWLj+BlrHIbjbyMqgiI0j+eAdnSa5xSLvP81tKD0zOs7KWa/6eunxOJgkjxhH8htXI4ApuLfbQA3aGvkKlqoOMzHX1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088438; c=relaxed/simple;
	bh=0VJZGhuJkCUeAQcIHJgXxy7OZKjeOwICNMRpVoee1d0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D2nQCHuv/W37l6SRGi8Or1F8ls8Cc3TB2Y3/Xn76A5S1sku4TNpW5BxudrH7WB27w3KFc37sLB7sK/6OQfxSivkudAdr01ZZ4glrjgb0uUgI5gCfnK/FbOK002AZCL1kRH278qyMqak/LHow8/jZTUNgrAJrTpPgOaUv0A8Mrgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbsU/+qv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hRvxRUr7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBqaU3148233
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kDE0gB5xYQL
	YngO7rvczlFLJwy5YaiWj5eLZwnq0DQk=; b=YbsU/+qvILRwve8u8+iW0soNsTR
	Egm1dx1k5gCuLiNfIu8N8Qgow+EZIkLhf4icvrtjGPAmDQHG1IEbg4QqYbBREO3s
	mqKz6iyUFr1P78sKLbYgKimQMGD9a7OBd7+8WxbGAyOHRZmqe8ouOGA810JsFetm
	QT/TE6Q1udq4TLUP3YPMZl3xKcKHQvTq7IQlehwQklb//vutVoNs0NT3KCg9WCVe
	dKph9LzP0AGECqxh3ieNBHL+UMoVGp7ngu7HBZ9k9FpmQF55XmIt9sUdojucPpaF
	80kpy5AN9tzGfOex9qAQO6ncIkzltI1Nji8Tdw/hGnm6Vbwnz7Z00RHzGmg==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5ua1hg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:33:51 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d74211ff80so7074418a34.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088431; x=1773693231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kDE0gB5xYQLYngO7rvczlFLJwy5YaiWj5eLZwnq0DQk=;
        b=hRvxRUr7NQdTYX6f/xSAzQcfMCqGxnHVXCacFYUF8nAohINORgp0Yiy+1EP8rcjkXv
         287ijsT5dHuCnEheP8omNqkCZsyJUItN0M0U06vkXoioozZE/DYjZd3kRaSvP8HWJHGS
         eKZQXjFWp7oGGDPCYwOKeivH/yJiz6K+DZTqTyFNGrwoVUtqFi8+E+RoxZoigkAb4w4a
         AoczxnxciTnSIeLYZ+W4mmgAB9D9Q/CXIZ4IvjXsRZjJMsfhZ7qTKXs4Z97KqzgE/3f+
         Lw1V0q/iq1mcW7LT3IvRGyOL8+7IKfnmudisTS30f1HM5xyw+Xv8NiZGmOJG/FUQSlZn
         q4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088431; x=1773693231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kDE0gB5xYQLYngO7rvczlFLJwy5YaiWj5eLZwnq0DQk=;
        b=rVFi5JyvQDYXPxIzlyJrgChn2nKtzJ3kNqIkyKoAkyxshPnsegPB7ttosDfhW4R5aA
         BFcSBx9XpR1WGBXpXc4sPJpHzEIBsfA00KTnvzOPiqbjKcVWwIwlbd4A+BlcwTvnro1/
         wJuNdfGm+2Lr44xeA48vIZOA7jnjaRnCfdrwTjMze0BCtYyqxP+HZ4I9amFEtXs7EVv9
         z2bgXFL/YlleD9GsvRMrhJxewf5fcGo7GkSC9iQ+BFbCtrd/oOxul3IQY7HDcZHfnqrc
         FvQRWCshfGVuSToPKiSRK3YoQs3Q8RgvGmCJP83VdmAUNWkWfNAhYSv7+JXxRljjaq0r
         5YSw==
X-Forwarded-Encrypted: i=1; AJvYcCURlfs9asiCqtaGXK5e4qOX97MHAe4cpyQcVG7LZ++L0Xji0Pn8BW0DnpNTKBhyhssKbF2j1qfkcWgV@vger.kernel.org
X-Gm-Message-State: AOJu0Yze983+hxuv4iwGb55cwAU2kDa2yww1bqWAVV7VX+keCPEwI2C5
	U0B1DsDuo6I7zcmMYs9B1p17ImMDR8PXlsjTKJ1DFMGvrT3+8kmq5mYVK/VINSZ3RRKF5xGwkv4
	4pAcnBbpyt2MYbj0beQjo2SBnY1BlEvgwAr0T56k2thT2MyWpw2CsgHHGELsjl15m
X-Gm-Gg: ATEYQzzhVvw1Hg2peiYBuBsoRbl7Nsimswu95KJAkOjr1CIMsqJNl2PSSH47NWIEfUj
	nk3V+EsUT2S7mCoxVxqM1kOUsX3oil9QwKBLUU2pPBrUHiEtF0swWT1RNWmjS8JhS5G9QGd8tGi
	xhLmoSSE4B1Omh1dx1YBmDEYdzHDlFKRIexhy1EwwOcUBCKdK+2WD18gEeqrKF0mQrdPXY/34mH
	6bj4liNL7Y7rwvSgQLJgv/hBmJMxMhYqKODgzreG7euABW78lcF7wU8iTSgmfifc/qJn0w0XAWo
	eOPUfWj9MmvYwb5NebE/yVk5+ElFLlnLIm1kUFUfI24Z/kmqZIogqse0CNATXAl45T7kqHpGYQW
	rvLRQ6AoaimhnTjlL4kANrNhGi2JMVB7e8PMefRoAQNok8J9VkZNjoRl5lwari+vkB/dKMKtFXw
	U=
X-Received: by 2002:a05:6830:6185:b0:7d5:17fb:6af6 with SMTP id 46e09a7af769-7d726e754femr7914800a34.2.1773088431229;
        Mon, 09 Mar 2026 13:33:51 -0700 (PDT)
X-Received: by 2002:a05:6830:6185:b0:7d5:17fb:6af6 with SMTP id 46e09a7af769-7d726e754femr7914783a34.2.1773088430855;
        Mon, 09 Mar 2026 13:33:50 -0700 (PDT)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74885b5a4sm3036494a34.23.2026.03.09.13.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:33:50 -0700 (PDT)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC v3 09/10] arm64: dts: qcom: kodiak: Fix EUD USB controller connection
Date: Mon,  9 Mar 2026 13:33:36 -0700
Message-Id: <20260309203337.803986-10-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
References: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4tzIHttl4UtytPwH0pPdr_T4RdKClb33
X-Proofpoint-ORIG-GUID: 4tzIHttl4UtytPwH0pPdr_T4RdKClb33
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX/IeK9nq9jpYF
 oEhmF2ovY2F3Z3WRDEv9WERc5nFe6Vat4GmnY+sFeyyxP0Tu1t7y+FSt2l0lYpvc74misNdiaCz
 ZUqN3r1mwKz+sq+J6HxfKhQUiNOg12KhduwrRWgn8iPLnDKAUwfBaanUukT2vGWxLp5dshR5yby
 vrdM88UMM7SXlc62AMi3Hf0Ml0vy5KAhfPwDTAT2VJpRwgOXZ3ukMQnUzD4o7tF4byx6fNWoP7t
 rRQVnc89bgMWQqGU2RVjzBkTueq53avCwuzs/JbLLfueWCR8pCkmA9PBbpq1xmpw7NrWxn+O4jd
 uEgf4eCiDRy2XyDKz6u6p0NbGZTeLhqJNgCI+pBv+J6W2IHl694DWmf6HPRp9qDEZtY3DBP6er1
 IzPLGg++ukJvdIR5zzQ2km4t8fca0ENyvNxz6jFVVdPO3WVQaUw2N9SCMawD2IntsVdlBXKVut4
 1hkDpA72tLD1b9MxCBw==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69af2eaf cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=BgTZCx5PUbG0OLn4eFUA:9 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: CEEF0240E2A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273114-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.0.0.1:email,88dc000:email,8c00000:email,qualcomm.com:dkim,qualcomm.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The EUD node is currently mapped to the secondary USB controller. This
SoC only supports EUD on the primary High-Speed USB path.

Fix the graph connections to properly map EUD to the primary USB
controller. Add an empty connector endpoint for board DTS files to
complete the connection. Also enable EUD so debug is available by
default on this SoC.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 6079e67ea829..24483ff2d5ce 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -4294,12 +4294,6 @@ usb_2: usb@8c00000 {
 			phy-names = "usb2-phy";
 			maximum-speed = "high-speed";
 			usb-role-switch;
-
-			port {
-				usb2_role_switch: endpoint {
-					remote-endpoint = <&eud_ep>;
-				};
-			};
 		};
 
 		qspi: spi@88dc000 {
@@ -4623,16 +4617,22 @@ eud: eud@88e0000 {
 			      <0 0x88e2000 0 0x1000>;
 			interrupts-extended = <&pdc 11 IRQ_TYPE_LEVEL_HIGH>;
 
-			status = "disabled";
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
 				port@0 {
 					reg = <0>;
+
 					eud_ep: endpoint {
-						remote-endpoint = <&usb2_role_switch>;
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					eud_con: endpoint {
 					};
 				};
 			};
@@ -4858,6 +4858,7 @@ port@0 {
 					reg = <0>;
 
 					usb_1_dwc3_hs: endpoint {
+						remote-endpoint = <&eud_ep>;
 					};
 				};
 
-- 
2.34.1


