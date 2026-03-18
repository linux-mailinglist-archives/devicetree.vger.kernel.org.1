Return-Path: <devicetree+bounces-277199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM70MOadumngZgIAu9opvQ
	(envelope-from <devicetree+bounces-277199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:43:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 684582BBB2E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3F7630325CA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4D53D669C;
	Wed, 18 Mar 2026 12:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RL17oylc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UC9EXpHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496CC3D6460
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837679; cv=none; b=AJH3jnnS7gOoTML3rFLtEjNUDaIk1DLjWMd9PPLs+HmhbA4G5UeP1kr+kQVhTzciyJqYeIxbF8U9/8FLINcqB69U0HGN74IgI2MIrMAdNW89myMPqGI11QeDz26gVAGJxh4J1WsCxhhMjo9FZT8KfpAFRuO2kYUfiqpDaBQVSwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837679; c=relaxed/simple;
	bh=J0IpU+kJNpYYUbOaj9NrQdGZt/mXePvosW2Xp/FdJTs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V0j4f2l7BPQt7FARIquhiV+dHOgS6PkXQvbQEtlabZTZRbJsQSqm9ZqW+E2pK9BPqZSRZoGdPPnuNn+88Q6UVW9kML7IXyFgh4PrH6evlj96MshDnFSPfSAWGS67skH+5GHV+sbZqLDwX0YPoQEt49AKOXKRowDuEAlecZKaiMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RL17oylc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UC9EXpHW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IC8hGZ1458952
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:41:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Ln53uIxTEA/
	vaN63HgvG/2g8kfs7RZK/qMkA4dh6exA=; b=RL17oylclaQyvTchOIxTUlWO2NP
	burLA0rIc59HH0ykIqWfOxgJqRrZRbkWKetdcz1iL6DGNALP4Ap+6BF75Ibcecei
	TUQfAcEEidcs1iRcnMgfJMp8gFHdTNanRg+SPwKwjD2I28Psxndqm7jMS0XX5VL3
	//DRe+o01PsZDNLmE4UyZA352mvjKm/DKsuLaQgk+01XUimqDNqyQw+FQS07Olve
	mHWINiQOOVGRDIehcYeitGMJktAszsWnsWyKuGV2yVqYwX7bbwDw/4KwOpcdZWvq
	OnvQyNJ1h83i1e4x9XAR3GiDstnSAEJVHzjJTXNrdz5uYFxDKfYeCAjlXAg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut183f1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:41:17 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bda35eab74so407586eec.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773837676; x=1774442476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ln53uIxTEA/vaN63HgvG/2g8kfs7RZK/qMkA4dh6exA=;
        b=UC9EXpHWC9LhSLIdKb0+W5uV/WLC1Tm7GCCm5ZlUBe/o4droLimCFKBdmW9AR7KVKy
         Jh+tPrqjt8Khsj8m9YHdPw+23bNbS7AXIJD4iZXPFOBDoD9ZQA2p0Hon3VTlZZXFidBU
         P/e3IH7PiA1fk/NF/7Qhns6YRaeO1r3KsKbXt8tBmbgDZyow3cYyCYEFZ3JvZx0TuD3j
         4SY8MU6Ah5GxpDF5bydVmii7lNFRQ7XwiHO1xGJCudpKH3BzwTjYrd/+E0N3+4Spi2PL
         JVqK4N7wW3DE8oCTbNt0oFZcIkkPa/cnajGWdk9YI4UXerZnChhXXaeMC+YlO+bsOA+Y
         VIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837676; x=1774442476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ln53uIxTEA/vaN63HgvG/2g8kfs7RZK/qMkA4dh6exA=;
        b=fD6ICrlMEvd4wVsUSZG0kxbd2Gu2zGv5Bhb6n2zNiAlaaLELw/H/NqalTzcPDL5rtV
         uVtMIsXcjslrNLNCeDLg7Ea9cN3tKNj5wLpcvsz6ZJHD7UIPvFGhfgTnPy8ZBHEpmS25
         o+a/jiK/NGjSGjgzkcPtFfXPdCyh9AaK/SyPetD4aQPLLDXayaB0iRFYSCfOghTsDhGW
         mupEg1mFMEBYScYsOgqnkhOr+T8Hf/auPVQ4zS3wsyJMtBcYOmlLKQJm6+FcSbqVQsh3
         ySgs3JUJpb+7b4jUOZjO0aYisqR+RPF4//DhnyDhVFpkxbwzl+EBBZHAI/tc1jx+xlJh
         u4lQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIZcqbuM8NhdqCOdYqShpzH7N2TJm1/IpLnNqTSfdEsHr0M86ihg0xySACMfyvFp3tsln+QO6AEt/l@vger.kernel.org
X-Gm-Message-State: AOJu0YxrHLJ7n+awWrHTe+UeCvvCpYDhNB9HZ8Ayys8DVQNSnetskS6I
	ClglYy5OpfKILIVS3+zfFnY8zK+m3tSLFOSkTA5KTsFYWEnOmj4bul1VN50GxUKHb/46QpT9eo5
	vuoxnrVdIbh189I8/E1tQTPHyPQqJx2JDt6UScWDoo16EfQilDbu2S5zhoVB9rzyi
X-Gm-Gg: ATEYQzweMEA0isgPCjic5Sg3CZEFANmZH9SvFS33y5M6QxdjzeMNYkMb+GRHv1eTmQF
	SYPZ7C6SmssBcEwVqO5wSj/QaA8rSg9xZOWtlITgRzcN7TgmcGJyMXZoSakOMR7qK1MVQ9eFURe
	kqXwVKMs7eRKKtP43wOr3iz6SbIxdussEe6UmNciktzEiIhVQs/c0Hy0zuVG6WhFDXQ8KFskSR6
	BM7EzBMeVuQL5AQeZZi9/ciDbKRnRNbIKNRmxv4JDe0eNmQX1EKkq2XuFSeFx4IhXLNVpI/uZTn
	F0Tuk+46T/IUFQcQv6Of27cfbmu8x1GdS3Gd5adD57IToYzbhKImLIH+9S3u3XkLpQQB9jpQPuf
	+Gjz1dtlxPWrL8ON5SztXpVcRRo0ZR4iuLnrvroSZcRIXYtTUwObQ73McnzB6ynNKZsubAKjteV
	REpeWabEXzWw==
X-Received: by 2002:a05:7300:fd13:b0:2ba:9cc4:aebb with SMTP id 5a478bee46e88-2c0e47efbf2mr1311249eec.10.1773837676131;
        Wed, 18 Mar 2026 05:41:16 -0700 (PDT)
X-Received: by 2002:a05:7300:fd13:b0:2ba:9cc4:aebb with SMTP id 5a478bee46e88-2c0e47efbf2mr1311226eec.10.1773837675379;
        Wed, 18 Mar 2026 05:41:15 -0700 (PDT)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e53b5fa1sm4454521eec.10.2026.03.18.05.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:41:15 -0700 (PDT)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com,
        qiang.yu@oss.qualcomm.com,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: qcom: Document Mahua SoC and board
Date: Wed, 18 Mar 2026 05:40:58 -0700
Message-Id: <20260318124100.212992-2-gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260318124100.212992-1-gopikrishna.garmidi@oss.qualcomm.com>
References: <20260318124100.212992-1-gopikrishna.garmidi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XcdD3PHmTrhEw5fljZtzYosnog9cBqXy
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69ba9d6d cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=QEbT8_BQrpgYwvZUqSkA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: XcdD3PHmTrhEw5fljZtzYosnog9cBqXy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEwOCBTYWx0ZWRfX4jkfHKTyIcVj
 85Kv8Nzu3KQZJh9CCdibRKPIdoGBmJ7nx30QGekynQGbd83xjw26Wnmd8COxrhYkHz/kWP1tJU6
 CONSAe9ZscwxI/y1Rw2yafl8OspGa3EKTmkLf5jTVmquLOquN/TDv8UHeAZgd81pflr3WmCjYNN
 HaXZHs6Z0VrkX5M+Ne3DelGcjA4uRWFOXSdIU5D+ZNH+jYm/FVcfB5LrkUM3f+r8b42vaSqat2R
 Z09wvedjY96dlD9/nK8nMqrspd0dMiaS5pjNfcgcIMAG+inozctr2QECVAGJmzopaq3j1sefToQ
 ELgVLzVkVRSgQuZt+Nq5EqDf6oRnGV9GeK9xavPYsqx5WJ54F9YJlrV/t+ogTkJZ+5SOObj4OGd
 R4jRLNhTYRgAiLf9rzduk+KTH5dpsE+q2RI3KCoSHODoNBat8VILWtbXO0EBwZJEYWiu+Dy7F6u
 gD+7bMC2W0D9gkyhvzg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180108
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277199-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 684582BBB2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mahua is a derivative of Glymur SoC with the third CPU cluster disabled.
Document the compatible strings for the Mahua SoC and the Compute
Reference Device (CRD) board based on it.

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 34a19e664556..be104b4be7a0 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -66,6 +66,11 @@ properties:
               - qcom,glymur-crd
           - const: qcom,glymur
 
+      - items:
+          - enum:
+              - qcom,mahua-crd
+          - const: qcom,mahua
+
       - items:
           - enum:
               - fairphone,fp6
-- 
2.34.1


