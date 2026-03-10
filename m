Return-Path: <devicetree+bounces-273272-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHXXAzuxr2nrbgIAu9opvQ
	(envelope-from <devicetree+bounces-273272-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:50:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 579AD245897
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13F2530616E0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADF53C6A43;
	Tue, 10 Mar 2026 05:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NVpXKeCh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jXk77RO8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E653BD658
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773121846; cv=none; b=LG2hLKDd2s+U7uP6UCRC75v5yUc78Mknfth/Rji4yYWf5KeTrsPRCZ4j2BiHb4+EIOH0KXPNLMCMx0/0jw7fegSRqUqUmo8ASLWR9qEhcImV/y27XKfsM03oW1v57ir2I9GYu62G+I7Npf+2b9roVMEdtv+cgTTVeizH+OHNIAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773121846; c=relaxed/simple;
	bh=9EFYYgGPty07sIWR6TjyxEEVXVKQbDrc2TNd+ORAAok=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VsjooFV7UENc1qvMJzPpCNAoLsxgtIegAUHJCIr2ZFnMduCP0kA6YbD9S1YD1L8bOidG/u61Q5NL9WM8nJf+9xSokctceGEgVJXmvcsnxZkyAKgsgu5KCcWNODhj4iUC2HPYMTcmZkibJAMgVfuMNrHJmoNILafOHy1CNKWCaIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NVpXKeCh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jXk77RO8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A5lF7C568670
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=T1c495CiB5i
	ceiNLOfs7z10NQdmbHkKl4IjuN6Jb4ZQ=; b=NVpXKeChDVHwhnTcFzEba4xgR8D
	WUrFtL9sp3ArE7edtC8QTg1SV12kIvIjS/b2mGZfxHcWsKlUjS3TNxSbwZVfXYsp
	R2Q1HbwQmYuVQ8f7d7CdLAaUUdFIq094m9qWnAylDa1iMcMIVYAg50zYr89szKoa
	5tKZcuz6CX6OfdDIFth2/o372zblf6vBH6ldLDuMWYxDNa32jWKexNZgu4kkAf24
	9LwY5/7Jd+l/UEtkfTLaV+B2QDNEYxAWmgV6+baTpSB7kXDYQslGlyiCH4dZi5JZ
	cLycDQNeHsqY70RQydxiGnfh84fEm/YcUd+yUmZymuceQ/WFc7zGS6tMHBQ==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctdf8g0ap-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:37 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-46724f3e25cso321817b6e.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 22:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773121837; x=1773726637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1c495CiB5iceiNLOfs7z10NQdmbHkKl4IjuN6Jb4ZQ=;
        b=jXk77RO8ENUj1PaEd+0YG0r+IwY1isQLoqaVLL7ovjca9yxUdMuVMaOCUkucS500/V
         HkCnXeiMEtFHkUFbGxZTnIrWZcGKGGWeYSlQo2i2hF3g+C13+zOQF2CZtspi2/7o4qPB
         CzqXIpzGX7LG8CkHZfsOGzCmoBdyuEc9yGG31wIyxgiuOPvXAxLj9f0PNRnq4BbWlj8Z
         3tdafca1Enp7vSwUPive88tvL8whcDShnTOs+E51ahP5T++eZTe5F24ZYH7lZAlTuPtp
         r9AOoB8lxSqjNKeAhRxLgJAS16BHau79r50hw8y5tYO/tv+YjFyaf5soeX/Fe7Y+TsZI
         /EGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773121837; x=1773726637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T1c495CiB5iceiNLOfs7z10NQdmbHkKl4IjuN6Jb4ZQ=;
        b=szSKkh+IK0jrPrF0e4lMfo+PosSlTBb7mmbXysSk5ZZ/iNaGN8FCqN7GAgn3hOtFN7
         imfx2L6ITpwiiJqN/lxWf5/nYkep1VvYDMgq0ovBWatSv8sX5gxLnXeA5QUGi8TJaDfB
         e76h/StcSwSVY2FwsmHgBMZ9hpkkGObXKgW8VB12Eq/Cpg4Om8AoC4b6TKo646O6oeRl
         S2vHWDo2p3HQJXEx78TAcGZvEGUTl9fBUTSVt22yowsFQ+n6lhhXiRZ1/3RYeWRrAsMt
         K5OkDVONecHfVmRexN3nKVTaH4nRO5eW3UniUUMmduk01WLLAKvIMOFAp43jNUxqb9Xz
         liNA==
X-Forwarded-Encrypted: i=1; AJvYcCWhstM6YQjj4Ao5JdYVuynn+eQxoelcXLJUckkSN5dKYg2ukUpySiNSazoKlIZrKEp54QJi0M0Pqy+t@vger.kernel.org
X-Gm-Message-State: AOJu0YynmZ1CiyWeSn0DlHdbaSpArPBtXNUepawZu+AnsZd5ihE6jzzV
	MEVo+hsPEu9KTxiMaPEqUPIYGZ+Tbua8pcEo9XeqQ8DfQer6X+cPXvR23W8WRR7P5oV56OW+o+x
	pceggrk9bhCOBgyhn55J3tKDXY4kBBb49Co7QNPNV+QE12ErkgDPbpVfGYev+TfKR
X-Gm-Gg: ATEYQzzdlPvJoM+y0GfgbWuw2hdvR9NLBD1SqdIb0rWI6vFxv93+03APqmQyhIBssR4
	7z8p8t0JjqdfRLNJTdPmJcC+iVNYTwgLBn9BuMa6kkbaGHH3+8/MVg7GiLE/nIG9jE0Fyg5/xsk
	+dgPZQkCLP49DoThJDsxnLxcGV1KC6ShO5PePa9WPeUMhSwV4/KoghJhSlvhaP+BPsxGLpSsEJE
	4JJGxiKwm0I1Q4srGtW7ejgRrof7Ds5DOfpk89Tm3+mfW8Z66VF+7i8hjJnDcY19bGM+v/IThur
	gaUhEtX7y13Sx9UAOhAeKx13QJlk4k4e8z61uYE1JTDrEK11POHtHjziD5QS8RJT7iFz7BJGMCC
	sq+DnahrIoKUQhPhdmS44t9m8En2/w+dFvJBywplwbjy+p4vqNbNVisJkINsQDcOEi+UaBNj0oE
	BJhbLNiq797g==
X-Received: by 2002:a05:6808:6a83:b0:467:1e7b:72d8 with SMTP id 5614622812f47-4671e7c0c61mr953643b6e.7.1773121837134;
        Mon, 09 Mar 2026 22:50:37 -0700 (PDT)
X-Received: by 2002:a05:6808:6a83:b0:467:1e7b:72d8 with SMTP id 5614622812f47-4671e7c0c61mr953634b6e.7.1773121836701;
        Mon, 09 Mar 2026 22:50:36 -0700 (PDT)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41756d4c581sm1487020fac.10.2026.03.09.22.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 22:50:36 -0700 (PDT)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: arm: qcom: Document Mahua SoC and board
Date: Mon,  9 Mar 2026 22:49:45 -0700
Message-Id: <20260310054947.2114445-2-gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA0NSBTYWx0ZWRfXzf9L6Uc4N+dG
 RFV48iRwCTom6EvEBRmYfkw26XQev6M0cDzDUfRJ/0JonVdUR2j6M5qlrIkoVX8q4lLonHAUoEi
 8LKgc3l4Wpa3nRxpOmde8+K0srU3FjjtL7q+a9k6B6+vbKDVWsskAyGo7OktIMOHIgKKmvSQpWk
 zhuoLL+vmM9U3lnsKRq3F9oMwrnQx6oEh3h2ZiI2folh6hP3ng8BLowDr8O0eu9y/Tv6GS2Kgvo
 WL1NccpoToFuZezFiMS4niwyFzcbGssCEM7nXg54dqzvYMZrBzlf5T2YgoofEEt9yBkE0yoWTxW
 se0togeEu/XjexyCeMaH/deH27hsWyrklt7GrKQMh/lYsMuCG1msFzR8mqL/juHzJEPxRW9Zn0Z
 wkalo23Zh6ulzyjjqYpb3AzH9oUxF2fEDJwGSG7dMWkBeQFpl2ni3zIcMoadm0BsvH/XswKMhin
 JsYksbEh0JihcHZSmbA==
X-Proofpoint-ORIG-GUID: TNpCh0yQHHTP5sHXRu_A6O23jInNogKa
X-Proofpoint-GUID: TNpCh0yQHHTP5sHXRu_A6O23jInNogKa
X-Authority-Analysis: v=2.4 cv=b+W/I9Gx c=1 sm=1 tr=0 ts=69afb12d cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=QEbT8_BQrpgYwvZUqSkA:9 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100045
X-Rspamd-Queue-Id: 579AD245897
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	URIBL_MULTI_FAIL(0.00)[oss.qualcomm.com:server fail,qualcomm.com:server fail,sea.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-273272-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Mahua is a derivative of Glymur with the third CPU cluster disabled.
Document the compatible strings for the Mahua SoC and the Compute
Reference Device (CRD) board based on it.

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
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


