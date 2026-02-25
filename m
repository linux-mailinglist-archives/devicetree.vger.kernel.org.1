Return-Path: <devicetree+bounces-268299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PVUHITWnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:01:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 360AE1962A3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:01:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D5FE306F976
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C535E393DFD;
	Wed, 25 Feb 2026 10:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dTlvtb3r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BrG5ZStx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC270393DE9
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772017181; cv=none; b=tQkYbUpgjpiLMN+RkYYEJqPLWgUGX21/f5EDOUR7PGSb5HX2WNjOp+auzOspJ9Cd9ohuufnRxZljt5DzvN4YnZumcZA9W2dURmuu0DlEv7OXoWE5+q/2e83gtCUnlO1gxDqHz0DYledCfgnui54AH7k+T1fzmIUdITqjpinDV+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772017181; c=relaxed/simple;
	bh=hrbIQP2ezmp4G2hWEA4iLF9c2ZbZmc5QurjsJMSe6Kk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KTYBOZfbKyb+G1oVuH8Gxrygkf3o74HYGnYSEOi6rJlS+OfxXldtQ8dXQiwl2gO560DeNMwBmEeQkYvK6AZJreM3H3q1qd5Fbej+t8zaUCDdKhYLdj+axWMaXhI8vqkmwrVnW0KIyovcCS6+P5x7QWeQvlrI/orUXxxjH/EpHjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dTlvtb3r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BrG5ZStx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TBul1579566
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:59:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=254Trw04g4L6FeAEyOZGtlcEiXuc1kmtIvG
	ERP1s6Rg=; b=dTlvtb3rfnuYu4xg05QU77adq2mxsLA3QvmWB8NB7ET4YSYRcRM
	10Ix8D39BEND5B5sLFaO6VRAIJaN1sxbUEFizDwudqTyROEv9HQz8EGZ3/50rg9Z
	wQ+Q1PAaVBRmIyONKfAbu5R5nZT3cMcfrTJKVKrtSrUKKvSq9wo9hXTyskZ05xj6
	yv9zcATua2SVHIy1j3p0QpEmpTTCqMCz2L3xhS4aXicBMSXK7slnk+meonSRJzrW
	1G7CeYyhaXqO+eVQtncq9rKD1At9JwKfvW8PlAr+Xm4WLeHC+YFsUlN6qjnNQBgQ
	jSNBUDHl1doOqCbX5ufVlRZybWQQG0+Enug==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg1sayqd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:59:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb42f56c4aso5637229685a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 02:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772017176; x=1772621976; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=254Trw04g4L6FeAEyOZGtlcEiXuc1kmtIvGERP1s6Rg=;
        b=BrG5ZStxUkioszNEVrv+goFows5sWm3irhsJX/qZp8uaiIc0foUSRmIcGzdx0z6Wjk
         O1rv7kdI2j0WVgkaTLVy9EYxjHZpqiH77M/NbLuIxG3meq9d2BEmhEF+ZZ7KiU3C+Hah
         rCEo1BazXgbs7eLEBL6dvmXQ8EFD1sFa/WNEwy4vgipgP72uxCTmXv4wGXxI5G4uxNwl
         AUuJtwuk4KFaAMh9RDi5o8pZ/QwgaU8fZVPxPdRHAMFK8I21YyAFpTcOSHnjEbj1f4Vg
         48fdsxxH+VHHldpDdfvjmBMx4deHRSiNcgNSsRw4x/GLlnw9eq8vgGIdljdQsVpkyWB/
         zV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772017176; x=1772621976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=254Trw04g4L6FeAEyOZGtlcEiXuc1kmtIvGERP1s6Rg=;
        b=UGp85chQC8S6+gGweuy0tF6wPtcAQfoitfmMwkEn93pyO4mquQVW/HS4uHRv9qL/sq
         PMTjjQIZWPGiRAg3CVoEBRs9uv+x5bep5k2r9RVLVTSdA8ZnF/YOqMND1XjwHmVgkmCq
         aFS2kBaXMde4rqC4EybYHobYLejje4WuVUd5+swcr9JZm48VvHfuCz6gr+1S4h47Rk6v
         OsEeCPYzbuolVjpsKr1MxtziykXxdYHnyZfNE5bSvKpdqbaQcgRAdNmOrgphgFhwRBLy
         UeYu71ORHEeic5JlyTafQTJqWo/ZvMxMypdsXXihmpILNbEOuvQT12BfjfqQez0jykx7
         c9QQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1KIb7lZtvQTDdn1PQbHbopWicdSKL7h6SQUAqUY753auq2fYeBUDGFJZgwWptEV/d8kWFO0pBFRJV@vger.kernel.org
X-Gm-Message-State: AOJu0YyI1cfgUB7gM/HVP1YjUv6cPEWb0vrkcAhqG1JQlJuxKfcU0Onk
	rdXi06reegHMQxp2B3rOvfCayJswGW+2lT180RNhp7NcfSNyQShvoIvOWuIkpNrfNKSId5KfhSx
	GHgL9pA0LT1r/KbvI2iXQOfXyvUyLjM4uPaFyGRGhFy1bzOTAlu0qjA8gQrfZR1Gb
X-Gm-Gg: ATEYQzwfmBXtiKWMDgVNEp48GjE0zzE2qEMWxSn3avlocpukgjyewfFvphM8n8AS67R
	5yEvr7s+pxrh16cf1vQvy+NgSY4VIk5icLrrdaSgUYQS9PcxZeNQVmZIVqtNY/mkNqqturfavsS
	A1N3LO7Vi9dRJbpZscPueVFK+dbc72Gz6pvy6m+9sr+C2nZ0FflkPS8CB5TAWTwovIIdTe2A4mK
	IxVLyqwRthS4VRTE2HQh8I5iwrPoYuyh5gHpCi05gIBevWqk0uDxfk7pVmqrc/y1SueOeSgNoAM
	eABQVlBrkfsvrSU/JOlRPWsOLnxfKiiVzl87GfYm1bs3i3AQoBMAWs/PMpjkGJ+dMclpqu4Said
	SZ1IKxH4hDfqlYuOZbW9GwmGd/FGZLU1OieaI0w==
X-Received: by 2002:a05:620a:1911:b0:8c7:f61:fd7b with SMTP id af79cd13be357-8cb8ca77132mr2072834585a.57.1772017176037;
        Wed, 25 Feb 2026 02:59:36 -0800 (PST)
X-Received: by 2002:a05:620a:1911:b0:8c7:f61:fd7b with SMTP id af79cd13be357-8cb8ca77132mr2072832985a.57.1772017175560;
        Wed, 25 Feb 2026 02:59:35 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd68826asm94622285e9.0.2026.02.25.02.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 02:59:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH] docs: dt: submitting-patches: Remove possible confusion of combining DTS
Date: Wed, 25 Feb 2026 11:59:28 +0100
Message-ID: <20260225105927.35151-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1815; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=hrbIQP2ezmp4G2hWEA4iLF9c2ZbZmc5QurjsJMSe6Kk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpntYPG8jz3WD3bxak4BrTzpBUf+8ViyEZxpV26
 8YQrnpow46JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZ7WDwAKCRDBN2bmhouD
 136hD/4tRR4cNJYzJdgies4tgsx35QPlp1HKYFLq+2mIkGkrjIN3oAamo2MWvq6OalboVLqwa08
 /v+FOT6xHlDM+cCAS+LF58gOU7UzX/UBh3WOS04yDEwBnNCKtfZvpNgCsmERPUctwoCZzpViKRb
 JANukrT03qK48SOXy8aRn/Q5WOZQovnGsoJX2ehYVRqBKumT4RYbb7glJaTBl9WRdXRJVtbsyfT
 EmSfRabQx18uNbgIDDRYhxskQ7xTiL3MpxuI0Cu4G3N6rcyEUgpD92u4F6CCAuKarhSmVwxhgZ8
 VQwIVBGPHAEpjS9ZdXtz3cL/NJ12n80ptQ5Jyd2s0Npng+fb8Pa4iQh9qX1MfFQIj89K/zxWmoT
 bE6iu8YRHXD7l3W4pHf8IJ/JdnN/u2SHSEe4TOZfxb5ZX3hL6XEuk39GLzP4f0EWy8Zqq4TCHvU
 Tf8+gDa0vc8XzGDn6fRMk6a/eLnTJSEMsUX+7vY1hw/jGjaygC5pVRH9e2tyr4eReXXeuXleZqp
 ICovy82ll3PsbY6080zTcI48f/3kY5L+iJrJreT5eSeQzeAT7+AZhOig5TMCusQKafQtJx6EU0J
 9dxLnYksTwTkvmXfSKLtY5jH/Jp7k6h0FOK9K6UAZGakZRK4GXltjBvLx/uqDCgQC+06lIk6TmN HSN/VecyCjL1OUw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZKvaWH7b c=1 sm=1 tr=0 ts=699ed619 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=23xeaJfjHFbHcfkIFvEA:9 a=IoWCM6iH3mJn3m4BftBB:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: CYQ6BzVzPgRGyUYCuUYVPBPSBk2w8ggv
X-Proofpoint-ORIG-GUID: CYQ6BzVzPgRGyUYCuUYVPBPSBk2w8ggv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEwNyBTYWx0ZWRfX4rKHp6EHbh1B
 nBPGsIJ7SSN1ek3n26o9uZRzT2Tt1z9D4/9bIceGfrzhEGN3NHSAG7lPjz29K2fqSXx4uvjBtKc
 Tr7bARLfAfMgSVqpiInlQPe6X2DcODbzTUvYGcdUi4pTk2/2DswprsFriZSI7GOnFnP9HFMgU8g
 PizAdyuj7La2NhsebqE5TGpfNwo9wiOvLr1bj8Azup6600oEp++sNboLuoQyK5A1du++qToNtxa
 h29gNqj3agnkowa7ZWlmAxPB0/yE/jSPis1Zwhj0ZlpJHgcAHNW+d+tWIDJFhTLWL1awVLluQic
 DNDIkOW2i/k35TCBNvmuq4zA2avDjXeIdUWqvs2MAGqPCNYsTZPBRVQ7/ojyHC6gEzyIR1qEqfP
 OEt+0uyyWSPQuewe0Gn6VCt8kPcC+t6r+K68cWeFF0dSqfADt7VDgk8raq2aKxR+7D6lqRHMrHK
 QMUvn9Beubgk9Ybcpaw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268299-lists,devicetree=lfdr.de];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[krzysztof.kozlowski.oss.qualcomm.com:query timed out,luca.weiss.fairphone.com:query timed out];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.995];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,fairphone.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 360AE1962A3
X-Rspamd-Action: no action

DTS patches were always expected to be either sent separately or put at
the end of patchset, but the first part of paragraph regarding this rule
used a "should be placed at the end of patchset" phrase which might
create wrong impression. This "should be" about order of patches applies
only to the case when DTS is combined into this patchset.

Suggested-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/submitting-patches.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/Documentation/devicetree/bindings/submitting-patches.rst
index 81e27e50f905..2a5533f68830 100644
--- a/Documentation/devicetree/bindings/submitting-patches.rst
+++ b/Documentation/devicetree/bindings/submitting-patches.rst
@@ -64,9 +64,10 @@ I. For patch submitters
 
   7) DTS is treated in general as driver-independent hardware description, thus
      any DTS patches, regardless whether using existing or new bindings, should
-     be placed at the end of patchset to indicate no dependency of drivers on
-     the DTS.  DTS will be anyway applied through separate tree or branch, so
-     different order would indicate the series is non-bisectable.
+     be a separate posting or, when combined with driver patches, placed at the
+     end of the patchset to indicate no dependency of drivers on the DTS.  DTS
+     will be anyway applied through separate tree or branch, so different order
+     would indicate the series is non-bisectable.
 
      If a driver subsystem maintainer prefers to apply entire set, instead of
      their relevant portion of patchset, please split the DTS patches into
-- 
2.51.0


