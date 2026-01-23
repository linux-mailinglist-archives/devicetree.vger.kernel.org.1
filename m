Return-Path: <devicetree+bounces-258881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFhiJBVMc2lDugAAu9opvQ
	(envelope-from <devicetree+bounces-258881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:23:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E332B74461
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF7CE301AA7A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13BB334C05;
	Fri, 23 Jan 2026 10:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YaAtGVjz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DqDl7TW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C97350290
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 10:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769163375; cv=none; b=TH8QMfz0eZrLiLTeSDav6Oi1p99Cz/hRO0lm37EL7PmN3V/9xq8FkhSlmcld3ii1qYbG/z/3iY/9M1vaLiIscSn3H8e2Aknmz8jvSgoKDixZ/wzXtWgBYwj4dQNGRAm3JuNt93DZJOQtC41AFBGI+OZBHCGEReLI3xeGNfIWEyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769163375; c=relaxed/simple;
	bh=AHJbuwH/Zwdu9tWlestwyzEI50tn801Lp7fEwKmUG1s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ARS1Tdx27o2rSKUHETsbstVhF0eFiC/A1JJW5PISO7ZUBq5ktjD1t1bRLGpjDO9/zUxyq3V/s1y51IOykmu+ho/LMsi1kYHQXMpCil4WKY27+nQAu2gx3MyrqW6uFMcmzlVG/ej0QRtHomCYEn/p2aUe04iKPA+pdqjRnWbt3iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YaAtGVjz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DqDl7TW+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N7ivpj1268067
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 10:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	qcppdkim1; bh=MUufVgBotyj/WyP8c5XioQ3hG0UgHe34qoQlJUGdEtg=; b=Ya
	AtGVjzNXXXrjjSLS1SqF7PfSD7WHYCdNW810wUY4If4CadTf3knxXLLyVzWQDvvE
	MLP5heUMowN8oZjq3fSZg1J7FQ0WDC+YiEq5BNAyCccPWgGP2ZYbnkQK0FSQGgU8
	vnYnAFD8wdxxcSeWhFIhtvtyYo+jilhxu1E9+9i5BvUf8D2khCuJyaZrz0GHMxQv
	5Um7zIrMpEw8VVF4vA5o6aGVhIbTLFdvQ4jNYIKGkoRH60c2seTVqeej/hDYHMvp
	5iAtMV7znMU9UW6vREQfDZ8I7nCFrdQY8ExtoclhZjb6zIMRpDGKL+tzzWmXH2qO
	OBWDLaQjjjrhoDtGjh8A==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv4v98jnv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 10:16:10 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12338749ea9so2756904c88.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 02:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769163369; x=1769768169; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUufVgBotyj/WyP8c5XioQ3hG0UgHe34qoQlJUGdEtg=;
        b=DqDl7TW+VmN9wTJn/kixTZMcqcjVrQUBq3JbUOp5UwuPY1v9CanSaT8gxLinIUPkhc
         LROv9+1X3aPypQnrMDL1pFC9PxK7ebzqoFic16DCXyjZPVZ6k6nAUNTGUe5AN02rwOQj
         lHxSk/4uN+GOAHFjU5fwYMJ5qQY6pUYnw8EJYtkNl8vJ0jVIv4w3jHi5IMtSmFhKnrni
         x+88V7fvlKCaMYhGQF7h6iCEA/8AFhKWjlPwOA1ZcRPf0K2mj/9BM0o274RraIiz5NWP
         7jznJI3ha+Evab9s1ZoI44lObks1v99DsWgokgWnLg50jB4ZNDeupe3zd5BnjsvaclZN
         Cbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769163369; x=1769768169;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUufVgBotyj/WyP8c5XioQ3hG0UgHe34qoQlJUGdEtg=;
        b=JlgN68K62pJhldmhB9JUdCSDEx9kjE0ScUPJIT4Hoix/BGMzB7esKFBthJJXqcpYEg
         MiYs5j2v1Pz8VngAOn6D83Z/JhHJNi8mdV1t75eDnKmul7C2RxFkZVfuxjN8FhFA0uBl
         obQHBOu7pCSelyaxYum4vyHYrHlkOvMD6iCloMXR/MtFV8nDma042Y9BLZaoXIQkjrqL
         u4INPyQP4Tg+IFhROJemFyNTjDAP0twLGWxS//IQay7WeXPnEm+1RTGQn0j0K3CvLh2N
         S1HhtJbe4xGZ+VPqSI6QKjWa9xzXqaRD1ek4zxLEjtl5vQNqgzM5pXCLo5Z83vezdmp3
         sS4g==
X-Forwarded-Encrypted: i=1; AJvYcCWpajCxi4zc+gO3rD+E2HfNf2bvOphsX1/fq/ozyKHMJTTRu5fZLBFtsWvjcaXqFrlHnGGTFOXDqMhc@vger.kernel.org
X-Gm-Message-State: AOJu0YzTOE7Pu9efpgJ1Bs6GbSklcXEDvtngfk9zxyKR2/+Ex/TiPMOD
	cjOn5q7v7WtfCTfgMYpIMQ1Q9TlVhuFpWPngLIfdIv9V8XFlk6ZYJZSADUh1qW2tQFxcQYpO//e
	BEpDAMG/NqhTEpgbCPfKEv2eEJRlxXfFV73ywvZ3VduQWM26UTdDfxZXa75ZPvw1L
X-Gm-Gg: AZuq6aJHIgGOwoAQkUZXhShuiOR+Vnqy2RTZnjtH5LE9UY/wvuPDv98CkT4/5FKep5z
	HpwdlggKsGLpFdEM4f+xoCGe84xMuNvzc/+9hTpxbcR5Wsf4Wdo1R2Sk7lP8nZaqrZj33/xS5Dz
	2SqWW39pzZvUP2V7tpTwo+VziI+UjTSFsv0rfzXPgotR0ziY5PbREKwVFeVnW4MQ3MRm1RzNUOt
	1P1lT9rC11KQZPhCEt9YgQ4dgTmM9z+qVuDfl2iB3YS2wALvBkgT96+lfbD4JW4caCkN/tlDqrw
	ENkGy/P7LaJ14KxhS/sNyczfYeOES9na34uwmT2Y3laNrB23c1wQkQ9OQ8fxBT1oK3b05nt/OHw
	YV9lRQzH8+3lmULUAo5Vz5ZEEWJNIfqeh+ATyN4eh1bEgSQg1UXZOjfRcJlw=
X-Received: by 2002:a05:7022:6881:b0:11b:b3a1:714a with SMTP id a92af1059eb24-1247dbb3165mr1091845c88.12.1769163369388;
        Fri, 23 Jan 2026 02:16:09 -0800 (PST)
X-Received: by 2002:a05:7022:6881:b0:11b:b3a1:714a with SMTP id a92af1059eb24-1247dbb3165mr1091828c88.12.1769163368806;
        Fri, 23 Jan 2026 02:16:08 -0800 (PST)
Received: from hu-anancv-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90cda6sm3326594c88.1.2026.01.23.02.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 02:16:08 -0800 (PST)
Date: Fri, 23 Jan 2026 02:16:07 -0800
From: Ananthu C V <ananthu.cv@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ananthu.cv@oss.qualcomm.com
Cc: Ananthu C V <ananthu.cv@oss.qualcomm.com>
Subject: [PATCH v2] dt-bindings: sram: qcom,imem: Document glymur as
 compatible
Message-ID: <20260123101501.2836551-2-ananthu.cv@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email 2.43.0
X-Proofpoint-GUID: 02pAkRAnG4qaUn9mgL8e55qDmYpVmPXq
X-Proofpoint-ORIG-GUID: 02pAkRAnG4qaUn9mgL8e55qDmYpVmPXq
X-Authority-Analysis: v=2.4 cv=H7TWAuYi c=1 sm=1 tr=0 ts=69734a6a cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8L1wIjRprNIJhFSkvUgA:9
 a=CjuIK1q_8ugA:10 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA4MiBTYWx0ZWRfX+19+OVByurAW
 +adY6tvWq9Zu23C3ha6+dS4yZpizSozt1kIACoD0/pBdiEcOgn2YcUaXCkg8qlWEegZXprDNhXx
 0xqbyIe8hIb26gXLyv56Kfje9daPZ/jc1aidqNysTMxmi0PP00ajezPhVpu462TUYqpsHYqGtu6
 qGkB2eD8FYigbJgm755PWsXsO6PlHFFZQMsOJFQKlNFVkKfOXzsr1DILSwUQ+gV/hteizAfbUKe
 LTs/zehRU/GoD1D2/ufe8hFjHF16jJA9m8kzt6SQCexw/k+Lwu6QmNSTVwYREKUPvwry5oOdUY6
 Yqjo/eiVjCtxdGNplbjP8DXwXS48I+jX6cra850VVnQ/+SUXMuA2mepixvS/kAkRrz6VmjbFE36
 w3us2Y/8Bo9YQS0Iwh9j02IIDSrqFoFIpDCyuhpCoRxbXOUL/3RLLOQuTVVnZqFRU4JSt+ezTPB
 Vlc1YAKXSLakcN3gEjA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_01,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-258881-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ananthu.cv@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E332B74461
X-Rspamd-Action: no action

Add compatible for Qualcomm's glymur IMEM.

Signed-off-by: Ananthu C V <ananthu.cv@oss.qualcomm.com>
---
V1->V2 alphabetically sorted the placement of glymur in the list
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2f..5a4a2868388e 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,7 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,glymur-imem
           - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
-- 
2.43.0


