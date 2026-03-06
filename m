Return-Path: <devicetree+bounces-271943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MELbEQSgqmlLUgEAu9opvQ
	(envelope-from <devicetree+bounces-271943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:36:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D35BF21E08E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89E1E3072A46
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE124345CA2;
	Fri,  6 Mar 2026 09:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cC+hW1Yz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HLTleoZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850C83446B7
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789634; cv=none; b=FcMq64JW9aHeEVbCYkO+c1skqOCqqpk7xQxxeLHC4iR4EInx0hIwfNzpN3UJdph3dennuRi5g1oXuMV+Hzv4gopjCTGpJmdRRlXwbGHklaIYVDgWSfx281EWlJy4auqnaQ6fTkMqNrTXfibAdvqUfL5EQxyZbVEcXXVPiGN/WSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789634; c=relaxed/simple;
	bh=n4OspjWSZagJvM5sUsKFGeAfc/MvM9mYMg22T2KPfuc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hy+KSGKlfCiAGy3/QyRh8tyw0DgohqXfE8rmUnPv2dqFZKj/eHJr2zT4KixZil+CzdVkChj08yCxMF9dRnyVl2a+8liSY7eAc1Zhl4tu7NFIAwulP5iYflsgKfwMEQbhd0xcvMySBrU52FUucVfQZH152lJgo3zXlV6C3Cm+Y30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cC+hW1Yz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HLTleoZH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6265UsUo3382029
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6XSNpW0E5rM
	zc7aMxxDVhfPGX98lq9GTw7LghKYK+SA=; b=cC+hW1YzD4ioUAdwULKSlLZT82O
	9yRWcrcBhXn2FVUsWz5slzEl4gDIY+jQfP++wdMwnjoQcuIBo2O8b/aHY2/SrrEn
	4hmhsxzuqK50QhBJN3RK2sxgufBiLP9sJSZUthy7Ixlk6Q+hlOlobLIrhdmO5oTK
	0mBcGbDJS8UAlyq6zYAKbPCyEmq7kUYIHTwnDRy9i6kS3b5qP+mS91RFAD2q6lZ5
	uSDgh8M8jkOBwwC7k16mt1iWCUECb06dWs9gIt/CZqd6IjNIrR1/Tyb7xFWhzD4C
	ma2hVOiQ9RL+ecJct4OAMBfQEbuGIlNZCJuLNrwkOI4CQjwSdr6wK1s45uw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqruk8sr5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:33:52 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3598d3e3bc7so4964872a91.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772789631; x=1773394431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6XSNpW0E5rMzc7aMxxDVhfPGX98lq9GTw7LghKYK+SA=;
        b=HLTleoZHWeYo9vYHyMESxr518XyUlSMdUBiokQb9nzrrxhA7M+YkmKJhHcpF7XQ5mi
         8F36jVU8Dr+JTx811ucRGvTwWwIGQYgc67OnuUsaUHcdYsnNrEzAoEO+uHA+gRCHbRHA
         DA/puilARNPDFDL+1t1hBN0wolgmTGW1yh6QaFumvvwzMX2NfoKFbjJewfj+ZK6LuKv7
         FXcmxKhadD2GLvkfQnZHizlvVhosM5umjImBpDJgPqhQNLAi8j6Ul/m7AostgammW31L
         DHwnaQFI9XA1RSSTyPA90d1XjYAsjl1c61arvOeB9s6Ki2G7qi5YQNlz2I+0vl4cWbkJ
         S63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789631; x=1773394431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6XSNpW0E5rMzc7aMxxDVhfPGX98lq9GTw7LghKYK+SA=;
        b=D45CoUVZEjPMw2YladVr1eoDSYBQaRlhporpgOCL3K26eCnO9qq3EfsEEKjphVCFse
         ipXTp2wHfe/EIUHiKHBvakY6xaq061yxs1wdQPMibDT8CyBABIuOUTtWHLIqDfjemIQH
         4hcxd088X9a/Id9FGdqvxJeghxy06HlZE9IaNieYOzn+BQSSZlm/hxBYOrHncFWfkdFf
         39R20QzpZDU1grZ3cS2bLJyxSlEd81wIxgROR+RcIypX3vxqwO0y/FIesCDU7NZpvEBQ
         8VI1kgarPsZkusBRug7v1PmuyDyhmFjJEd6igdTaUtdFtNH9VgAG60fozTPR7MuGcQLk
         YBYA==
X-Forwarded-Encrypted: i=1; AJvYcCWCtBGEZrTVQ4Wei67OrZZLsCHHkZulCogW+7twJOsWuZ2LKaLuG4myKGkQCG30U7cd3FQ0hjx1su11@vger.kernel.org
X-Gm-Message-State: AOJu0YzETfeDD0ybh372CoWnRqIXOA6OEvo/DvfaRLkbwuzg9sAPpZm0
	PdtEm5b8NHocZ5kzmx3SiiZdEJIwV0IPmIGFceIuCu1KFEjgMrTsQdoGR9Dsq9eYQ/1MZNNtS1N
	30HRVkGs9+/dhz4MyVyEPw9xgkPV9lxP7Fl8PgcJkOZ4pyFw7s2ZMlMOd32p1ZX+u
X-Gm-Gg: ATEYQzyCqL75Glrlj+Q4zssALQoitXpyuoO40eg7vMubfjAV9oEq2GTtrt9+Sfkpfyc
	qtX73dFkAM0Z5jxEycRR6EmVejGCVXSYn+kP2fX3QoyGqhaADYJVSz1QxFYfvKoe2nPwuhdlCzL
	tH1OqpnyNJna5CfJEDpdov7e7ODPY1iWiWrproe5yI7VGIUavJuWyMQD0atqgWXUu1ByEBY8xde
	T8GXuOGN1et7F1kMFtTTbIodvBSN7CIQ2leOjR27x8oCdZegyMJcD3722wyEu02hX58YjOCc2BH
	svkjJHNdDFiFFhOS9pXUdJdyUeUZffwkUluPYWIHRRAajC6VwW5tH/yaC9xPQD5+iF5l7xHy3M4
	ljIF4/O0/iZ2t4XXIPlM3BB4ePakd+hdjZonCqRflRWpw6UMxcfBb
X-Received: by 2002:a17:90b:3cc5:b0:354:bfb7:db13 with SMTP id 98e67ed59e1d1-359be3932d6mr1377990a91.35.1772789631322;
        Fri, 06 Mar 2026 01:33:51 -0800 (PST)
X-Received: by 2002:a17:90b:3cc5:b0:354:bfb7:db13 with SMTP id 98e67ed59e1d1-359be3932d6mr1377967a91.35.1772789630869;
        Fri, 06 Mar 2026 01:33:50 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bbcacf06sm647549a91.4.2026.03.06.01.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:50 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v5 3/3] arm64: dts: qcom: monaco: enable the inline crypto engine for SDHC
Date: Fri,  6 Mar 2026 15:03:32 +0530
Message-Id: <20260306093332.4193993-4-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
References: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MCBTYWx0ZWRfX5PlVD0IOrW5o
 tYjG1qbHsZ2NwlC7QzpR2pTy6NDSlayltsYZzfK+yFPyrhwZzURq2XxukxGzhc2s1ViztSnP8E1
 sqazcwVBgv7BaHc041AQdrpk3CEmIP5eV57xutA5/Hku+w2lPl9Yi3xvhkUDYlBNmNUbXX58rpO
 rH0O1N+dUzlX0YlYXFjtU44lDSCvzzaKhNDr5c4FaYQODrx4DRj5VfUbCTFCSN1Z4HaNRtARMg1
 U7pdUN/6PIqJz923XawkyxTsTGJWtA0I1raN3aF9oUki37hK3eZonD7H0PwFvIMNSxgnfKM4ZXP
 +Gb29qtEtAdTvId0C18s02juMDafpxaKFHU87Nq1B1uP0gzctjHc+pTd/+aHtrLbBQrsJKlQa3f
 d1xoCyAxrJcM4LMRvT0MW9LIWdUv97jUMAIZ4+f6gCNMzCyGXr0gKu99hcaBoQYylkjWMYFdKI1
 H5Q3rJ55rJyOpE+Ebqw==
X-Proofpoint-ORIG-GUID: dx-cfNzkKO5S3cuUilu_AgxKjwqM4dPZ
X-Authority-Analysis: v=2.4 cv=DvZbOW/+ c=1 sm=1 tr=0 ts=69aa9f80 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=X7TbQ3M2BclZft3SHBIA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: dx-cfNzkKO5S3cuUilu_AgxKjwqM4dPZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 suspectscore=0 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060090
X-Rspamd-Queue-Id: D35BF21E08E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271943-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add an ICE node to monaco SoC description and enable it by adding a
phandle to the SDHC node.
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..365af78b01ae 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4202,6 +4202,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			supports-cqe;
 			dma-coherent;
 
+			qcom,ice = <&sdhc_ice>;
+
 			status = "disabled";
 
 			sdhc1_opp_table: opp-table {
@@ -4229,6 +4231,13 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@87c8000 {
+			compatible = "qcom,qcs8300-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x087c8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+		};
+
 		usb_1_hsphy: phy@8904000 {
 			compatible = "qcom,qcs8300-usb-hs-phy",
 				     "qcom,usb-snps-hs-7nm-phy";
-- 
2.34.1


