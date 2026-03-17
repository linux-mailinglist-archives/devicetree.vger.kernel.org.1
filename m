Return-Path: <devicetree+bounces-276788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF4dNPGQuWk4KgIAu9opvQ
	(envelope-from <devicetree+bounces-276788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:35:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D225B2AFD3F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:35:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D9F8930A0D04
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E29E37AA92;
	Tue, 17 Mar 2026 17:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TSMFtdtB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bqR5DK13"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715D134D4E3
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767726; cv=none; b=MwggscY9RH4Q24jMSPSSQsy8r0CL8kLafCt/oHUOKXPj3uAHfC2BgJJsLinl2WNkPEBvYO4Q8KKwFlMfFzSTVRLyyenvbIYrxzPSkuRMorfD1K2cwIMORkDEq4RyU/qNembihlnYEUkURiEMuq5+f0SgB7roGV5lyngb7gr8zxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767726; c=relaxed/simple;
	bh=JOZbAhPAb/jrYJluqtSnYP/eR0BQRIp7uBKX1lR1RxY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Saw3LUR/1MSbc+5tQ4ylEnU/Lw+Mq/qPCGf+R7lUUEnuaCgCLU1WoXoPdMmGvKMtX0eN+Z5pfK0pIApObkJS4ywoKAJ6oeIAqJcINzHx88/MoTBu2r2EQQH6FEMPe/Jo1gJRDRYUg0F2Ro1Q3231bNPPYbW7UYhesoCHueRBnHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TSMFtdtB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bqR5DK13; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HGZSDB2071650
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:15:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+lMqXRaEncaX84LcnOWNdxgfFY3qFRQryE+wAd+VB5k=; b=TSMFtdtBFWgzeSKS
	1cKS8GEVIQyDG1o5fFU5aWplzQq/1dbs9Q1jHGILgAcVLV9qrGnzXB8zX/aBrXQF
	sP4Gycyznoy/tGiF4Y1PbE/FuOm7dhd7RMuL2kIaj/AvQMFbnU5J4skS+rJ4oNYj
	z38u6Es5pGOp+X6gdjCFejGhP53adF8pIZygfu9g2S5E6TQVwb9Bb77ThqJC0KnW
	azDUDJtoD57gGKryigqdw8TiTv5Wb/F/WFQbXd/ZIHnPs/5j4M53tQXcXN4+pBki
	JONdSTw/7Ae6S7WM6JT5mdjgH1tUs3UsTL/J7oZBvk9l356bEj8Y+Ykx8muNvRWy
	3oVHqA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy4v6sk87-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:15:24 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3594620fe97so43293099a91.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773767724; x=1774372524; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+lMqXRaEncaX84LcnOWNdxgfFY3qFRQryE+wAd+VB5k=;
        b=bqR5DK13chHo2Ki+uh7r3KRJwqbK+aTiEaZQTFkiq//5OUEer20b+4AhkNHNr8o2EG
         //IbGXC0TKnzCLoyfixibznBLC551AzutzGD1b7ANwYNdILggZEMXcpqIh0qHWJco9i1
         rJEjgPJbHBPVpWz8PazQVo7PH6J7gU0LV8z7iKoqSOAcY/HECIimMz9UeMiISJf+E1Mj
         vuqzVSjnb8+JmNe6bcz+sOK9U/GZ+TjnbwAvOngVxi8/YtLw8TT0epJH6ounw6UFL8Yp
         lZbOSDI6NeHJ0/WbdWU6A9bw8neI+3v7PLLKPMm9cyawhQp40295AxUGsl54Mwz3gFFf
         jZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773767724; x=1774372524;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+lMqXRaEncaX84LcnOWNdxgfFY3qFRQryE+wAd+VB5k=;
        b=a8KUiEynNWSHW/2z/ty/TvWIiqYNEHjMn6/A1N3gdbIr5gh2fcKfXapOa/JvFykeuA
         RE7Qh0jeWPLO77J0Yg87qeuWw+uvTXTTtINOZAncRi8tBBhpeqjQdAi0niEtotJA3hlv
         I1yl5QfwdQH1LFlqTGoqayMeKU6zzP1qusEYQrCno10VnWUtY3lhmYKjnvDE3JcLSKYm
         R4sBezltr5FVJox28OaQCyd2CPTBCDNzB8Xz4mcGm53RaYTmlydSIr0NejAYpvaNjQHp
         rnGBz7NMXPfwKdJLLhQGCwIVPgc4iXkgtR543PvcBGncAMgOdXEfDwxQy9wBtjTnYkBq
         M6lw==
X-Forwarded-Encrypted: i=1; AJvYcCUgXTSKQw3FiEfctXEtsUw/XRjb9H4LPUlXRtlW6/r1+xdl9QKKsMiYvYeaZGWh2eVYeHyKODClWvCX@vger.kernel.org
X-Gm-Message-State: AOJu0YzTT+7psuHdfa2x7sNNRi3sxKE/BOF6fh7wpEv76KVHc/vkHsuv
	0qEVr9RbwTfOtcQkVkr4JWKFbZtC9FuAQ2+GKhnpDXPiljZZQKS2hbPEcT6ManFotdyGvTSWUJ1
	8Nik4PeAmVhpgpfca7ASXw7R5+sbiZn61/rpuMqnTriZmkw2e/CRHTr25LlEre9Ow
X-Gm-Gg: ATEYQzzmA0wS7c9p2ubesbdh2GF2XvP8LKNSiDrtqnaXi1r++9dJNpzW8U6uEjB9Zs+
	FJW0e2/W+Y7N7Xy9zRII0KLcGSHDMA7p3zjIgDVpiWSxdCtGGLQ8OMOOLS+kPQKFSXoAx9iEDYk
	x1Nj1uGK0/NaO6NIwzFFOGpmmLzMDpR4SbY77dSHX2r/0nH5Z+IZLe6Adk4Lcu1Q3CdssbD4ubF
	k2D/NrDi2PE2AF4rYRFuT+CbFcTT+7vXKbYazYTA59ZICcmwYCxFldxFON6Y7aTnw0ZyRMw+XU7
	NdxMr5IeuQb1x/Q+2BXOeMDznHi40CZ5pU+wMFw0bSgyWEIqw1rEUGS50K7oPxRFzJR47fk9hap
	OutQZ84VyFnVpW4lUhNAIW0qJbJj/in0p/M65NV7uzrB92Q==
X-Received: by 2002:a17:90a:ec88:b0:35b:9894:f6e2 with SMTP id 98e67ed59e1d1-35bb9f65b32mr160842a91.33.1773767723892;
        Tue, 17 Mar 2026 10:15:23 -0700 (PDT)
X-Received: by 2002:a17:90a:ec88:b0:35b:9894:f6e2 with SMTP id 98e67ed59e1d1-35bb9f65b32mr160810a91.33.1773767723206;
        Tue, 17 Mar 2026 10:15:23 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9f1cb48sm28919a91.0.2026.03.17.10.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:15:22 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 22:44:28 +0530
Subject: [PATCH 7/7] arm64: defconfig: Enable clock controllers on Qualcomm
 Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-eliza_mm_clock_controllers_v1-v1-7-4696eeda8cfb@oss.qualcomm.com>
References: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
In-Reply-To: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-ORIG-GUID: 5XkMBkO1Bzd0dKdiBsd70Mxnbxk57nmQ
X-Authority-Analysis: v=2.4 cv=Aa683nXG c=1 sm=1 tr=0 ts=69b98c2c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=sHU3hrrlAqMI5U2SAHQA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 5XkMBkO1Bzd0dKdiBsd70Mxnbxk57nmQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1MiBTYWx0ZWRfXw4AVKD0LkiGA
 9W9Sfs/MEO2C5q5Ets3RmM7vieeOwfzGrjpbE1CFx739zh6x7TCqbk+6B29QSAQ7TFe8A5l6I1X
 mr0NEyy8hoxAkTAs0D0WXVouCZYUQMMKLBiFyU4DYYPSuKhMAyvcbc5hqqStOHZIYDOnUBByqbS
 HbQMyga5qzfllDs5PtFS754sAm136b0uVSySmgkP72Za9xG9XPfvf2t6LoiKqV+IPX+0b+RhyLS
 Z0kSG5Ead+M9uHjIo+0cCLuYEeOcFqbCEkMMtrgfJm4Op070DMKwy875ANEZUgLBZA4hsDNHx9f
 aqOx2BBhAB2qfwywv6DC28Tbd3UH+yOGPB2wPB0T3WnFDLNu70dKHRaq2wtreCtj0Sjdvb08SgA
 92lrbuX/YVZ9Uee5Qexf6AbjW9MrXedWZug33JaBl6IZ8NCu3D9MWygdgqKQ23jW4qOgQ7/txe4
 DhPk+N88Q2BofkC2uuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_03,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170152
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276788-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D225B2AFD3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the video, camera and gpu clock controllers for their respective
functionalities on the Qualcomm Eliza boards.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 18881bd239f9c53e74ad5caa492bace394e4fde7..dd45d275d30a32fd567432b5c324896518aa4ad8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1458,6 +1458,11 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_ELIZA_CAMCC=m
+CONFIG_CLK_ELIZA_GCC=y
+CONFIG_CLK_ELIZA_GPUCC=m
+CONFIG_CLK_ELIZA_TCSRCC=m
+CONFIG_CLK_ELIZA_VIDEOCC=m
 CONFIG_CLK_GLYMUR_DISPCC=m
 CONFIG_CLK_GLYMUR_GCC=y
 CONFIG_CLK_GLYMUR_TCSRCC=m

-- 
2.34.1


