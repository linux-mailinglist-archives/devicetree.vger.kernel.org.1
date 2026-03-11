Return-Path: <devicetree+bounces-274014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IeLLc1FsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:37:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 654DB262559
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AAFAB3005985
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1213CF694;
	Wed, 11 Mar 2026 10:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H4h2wrrJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Baa7Zr8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5073CF681
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225389; cv=none; b=UiVAlJfvt4QHXf/z+im75PI+tX/FpmKtukpANtaETRvsauyTFdJg7w09fHWlakfzZgoN+jRc1BWEH9v6r6IoVYbdyBtFB8OVOytsJ8BODquu6kAnoYmR2Ugvk+S4HgYGVLFvikZ5g0gnW+jW0WV0PSUZoQGBvoYR+lfL+4wBMnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225389; c=relaxed/simple;
	bh=kxZo7ioQhvtoHjeZPVYY3GMaH9CaQ1h9s3DRTXP5qow=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hyufCs5sR9JpBQWnD9MUvyzOcdu4qKYxkyCBEqpyQdgmF7y70liLHXEBdtj7dD7twVqUg21JdWT/XW8SSSYQk6o7gNzE+3Fgd6xfklZ/NSD3qFjFhOd108rXV6uqjF7T4rbggb0DPpngSFlp+8ikuP2+YruLLDhryeWOk8scD6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H4h2wrrJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Baa7Zr8W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9aOQw614019
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:36:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=HbZj9tv7s1K
	+qsnLUWbHvi8x21FiaRRcwrvvVvQVwKE=; b=H4h2wrrJSgSGdDWebATTwGoBugs
	Kpjh3zOo29TjEHhlxwhhslr7/QBVwCrCDxJuJ1kQVbf8VudB+u/wauVHodm06zcW
	2u3VY8SA3UuXAZIcGp8vsnybLrApluh9QJJcesQtOVFynvhhWZjoU1EC9CkA7Zsp
	JE0uDXvFu3L017iK0fqY1V0OLaOa9hcVnoyKzqsTDQhHQUXgdI8qNta2xMqftlUb
	UjVzuVDrqv3tFZDVyfVqNkKAyqij6dHERcgta8MMLIZK5/RXJ158CmfjZbxx885Q
	M0s38x8/nnfkws4H4WsnUwpOl6xUoFaFqBV109Qdn4EjULKcLDCSjc48sOQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu0jf1gfd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:36:27 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae467f128fso102695145ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773225387; x=1773830187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HbZj9tv7s1K+qsnLUWbHvi8x21FiaRRcwrvvVvQVwKE=;
        b=Baa7Zr8WqQkpbcDatk2f0pMRMHT7AeslpYl5RTo0Iut5uHHIqk2a+YaQJJRUIKyowV
         Y/Itsc9sB5YhPycJAEWCA4AIIUseuKoC4JK0+wTtSZqk4AVP/yetiAPXIbuDgjDILVg2
         9XVVxdN8Y7NO21YqMEeA1ORZII5S6ViUDKuwkeA+sgmmaBGBxczeNuJpN769MN0urLCh
         NOyCQVHq2iPvdIkOkAHgsWXn4qWeKtRv1J8FuRyerz6MjXybzI1e4xo3/ueXaJBnFBxI
         vgsqNhHeInC2LvWcvwNd3MOjyczcc5e0J4Px+skMO3LlEN7m/GvkHYcM1jRnCrvjRXC4
         KouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773225387; x=1773830187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HbZj9tv7s1K+qsnLUWbHvi8x21FiaRRcwrvvVvQVwKE=;
        b=Du6/a8uT5arJ7jVlevk8Ezjo9HTyngbABHZQdUq4PyLiEb8MtViqJm4l+oG/676kpD
         7gUAOr/2bzlsszBETj1KmREvw46hfT52Y1mIoVFQLo9QbaYQhOb4BuQs83FClCBUlBjC
         QBm6vHq2yMBFLB+ilezwX9olzzDSvRs3EA2yApocktyhAxqFRBktaIuNw+LrWCyrX9ou
         XzWHCAnOSeYzYr7lRC2jLgW8KuX9i3/RUhkYAWOxV2D3/KX0kh+eS26Rchy2JXbKVS1t
         EoVdIFP1BxP8wq3B3bTiF3hOczjj/NWVJNNrqLP06Lq6ieRv1no9nkKssfvhQM79Dser
         nF7A==
X-Forwarded-Encrypted: i=1; AJvYcCUeou353tsBs/EhWxOu2wupQITYZCEUil89whccS9XL5b3vg/EOh5PIfYyArpjXiEfLdR4Yx/OSJF0+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5fKtVYjRPhEFdm7dvRUrTV61ofbGszgnl2sQl30eSOvx/WHCa
	TvwBnxm5bax4v/RffMVvN1dshb5li/oFtfU7IBPoHQYJpZyfEhp8z3cH0Qt7wZALURDyS73Yx64
	tS6YDXc6Yq6//ar5vhjHBAMwQswy5ne/O7mHHJ248riuye7SewIlceUQK/zqdnAiO
X-Gm-Gg: ATEYQzyGjhi85C5bPD35RKuWSlmnjpLBCtHo/3oqeCL8JJawas/AMfNT+SJr7TI89WR
	AN43LuvnPnXZXiXBH95M6PljX6vPAo5clgDoJyZC0+DarXHtub5jdYxaIXICL1tcd98giRD2WA3
	A+sdkxGIUbedK2866gHUHA6VZO/uHMkuTW0pT/34i4CPf7GrKeMuhLKnKuXMKT9b17aXZ9vS1WL
	pof/C5qpMjNfnyCO8QfNLMTAs2xNVxYdQjfbuo9u3K5TvgP+hASXUHVTdm+29+VzIhGyIn/pm+1
	+7pPBtC9MdIN/tnLBBa3K9Bhtd0ufzuIcdbwLvths0ca5Nab86U7Bq93/R6LN+jJu6lUmiJ6a1E
	MBaAINyImp2/6XbHBwa6H/gyzQW909q6U2mId0B6Q4q1jdWqQd/hDEaw=
X-Received: by 2002:a17:903:1a4d:b0:2ae:48e9:8c89 with SMTP id d9443c01a7336-2aeae8d244amr21270875ad.48.1773225386548;
        Wed, 11 Mar 2026 03:36:26 -0700 (PDT)
X-Received: by 2002:a17:903:1a4d:b0:2ae:48e9:8c89 with SMTP id d9443c01a7336-2aeae8d244amr21270685ad.48.1773225386085;
        Wed, 11 Mar 2026 03:36:26 -0700 (PDT)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae378a28sm21042925ad.88.2026.03.11.03.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 03:36:25 -0700 (PDT)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: talos: Add clocks for QoS configuration
Date: Wed, 11 Mar 2026 16:05:48 +0530
Message-ID: <20260311103548.1823044-4-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311103548.1823044-1-odelu.kukatla@oss.qualcomm.com>
References: <20260311103548.1823044-1-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: KRXiEvZDBbU83rT0ygS-SxtUNkyh8oHe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4OCBTYWx0ZWRfX8P4t0y6+TzVG
 y7qsvhTCajoBNj65luXb0q0DQexoVTWVv58dXELB0MSuSj5LHxL0ujAJ3PSGlpS/UkveyXFQ+uD
 83Cy67KC5QRb0B6eqCW/RAsDmJFWy80BOoJDPxgwolWTIph7Xthd6McDm8faABi3yv4CxRZVWZv
 x5LmM0voHlpFHKCIDIdUIBdPQ6lKMDitOV/hZS7FT1wT4xwMml/WU3EllIAwl1CVVz/T6TgqGu1
 0OBNjvhlgV90VqD6kqnqE+77VRdH/Rm9oGv0WDJNTPoSRh3XcLJIJtI9Ihn5El3LAUHgASYCZSM
 mJQDrvU+y6Ivpl1tNhNPNOlt6mORaL9q5QLh3/0hik1exNFEffE15TDjoCYtRT074qViieDsdRa
 jAvkkQaV9Cy7Duhh8aOF4JSGNN+2IYSU4E+ldliO3wuI5c+4/RCQCWyDUfwaJ68ZQeEzPzCEvjw
 n5ml2vMZDoIYL4/r3EA==
X-Authority-Analysis: v=2.4 cv=FMMWBuos c=1 sm=1 tr=0 ts=69b145ab cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=7s_9-EB0MOrke_GCL94A:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: KRXiEvZDBbU83rT0ygS-SxtUNkyh8oHe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110088
X-Rspamd-Queue-Id: 654DB262559
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274014-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,0.25.240.160:email,0.26.140.224:email];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add clocks which need to be enabled for configuring QoS on
talos SoC.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index e0282a5f9a6a..73a7544d8283 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1237,6 +1237,10 @@ aggre1_noc: interconnect@1700000 {
 			compatible = "qcom,qcs615-aggre1-noc";
 			#interconnect-cells = <2>;
 			qcom,bcm-voters = <&apps_bcm_voter>;
+			clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB2_SEC_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&rpmhcc RPMH_IPA_CLK>;
 		};
 
 		mmss_noc: interconnect@1740000 {
-- 
2.43.0


