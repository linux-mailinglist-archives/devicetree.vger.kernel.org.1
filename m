Return-Path: <devicetree+bounces-265996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDk8Cn8elGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-265996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:53:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3092149626
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:53:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF0763033E4F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3062D9EE8;
	Tue, 17 Feb 2026 07:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g93e3sep";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="awyXDhIk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450472DC34E
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314764; cv=none; b=ov8TK8xFpwoumYhbKBpecRhp6Th+ssmDZNl+7aiQ4takmeWTJAJChyToqPd2B00yi7d+lz1lD/Aos1LdCpUSpSu22IDGgT+FgEr2oDpoWT2pQFzDyWCAq9RhpujISMs/gVI8UsCBWp47QA/XEC+kCClDw+vcvH753LEbatdm88k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314764; c=relaxed/simple;
	bh=ljNAanNsQX3haUgfK2VNArM8xCcxc69jvU1l9y/w+to=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NNKkCV9bfeDq+4nBNF0p0wKStiG5IusRcpHYLpF2LotsaXH2gKCF6ID+s9qoo0kUWX6UV0h+WD4Vf3abJPZxjQPWCZI2HtgWY986bQTCsN3lSNJhSt1oG4bcyQqWDylAinNPQ0f5T5Gs5UZU8s8GjruE2ToAsyb8alXSj68UNqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g93e3sep; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=awyXDhIk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL7gD41613313
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:52:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=; b=g93e3sepjWrNTdhq
	/KVLdzNZiaWehs0tpxuGBjv5+0uS3LkXr1LZbeqzjGBIE914a6JkIXDqv5maLfvX
	66WHMwfS004FDtnb6riOiKvwYRLzD0vhZuf9Fd2T981Rl9m0GtyPLQDQYH5prz5h
	Pm7liXqMBHG77A1dxf7wdISX8NaC6MvCVjEuPnrgtKDB2LVU2IzokOQhC5QsG6+N
	lhCc892In4brusw8D9lRv1ZjodQgQpGj79mNw1Ym/vqEP3iWm3YQXEuvTlRN8EP3
	8zhu4bZlJhYIwgxo7HhIot6hHlnmMl9MqFAH4TQM01PPO+kgJYbK7KLOTyi2VJza
	qPBeFg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662sk4v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:52:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb5359e9d3so1975956185a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771314761; x=1771919561; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=awyXDhIk2hb9E61EyCRJjxgFczQ+rrfdVU9LcmQP98nXZFaYIroAxxDR/W0tn5bHru
         GE6ZSquv6KJJT6pLC6khMfY5e2m+1T2EOuSDcbanj95SDUgb8WJzqU/RglYrCrvVlSrV
         V7yWrjpyG+zSOljecfcRYkw+yDjrqYRmCX/hGRtq2r5KccwiMnj3ZF3FpdD1IrkB0p+X
         lJdXblDouX8u8MjrgNKtf8Ubth9L0JOapk/+psI58zl5cmjA35l9N/xbYRf5bzYfXG9j
         aBqTPU1x6TsktE8bz5oSktTQuRLyp6GBRullff2drTnh6xsi9JbhRtPm0BIdRrWxp/73
         dokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314761; x=1771919561;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=r7sm67l6yw/VH/tkDFPreSZLCsl/gKoHHSbi6T7pMVk9yU8NxD3FE/qxhdVrXMEhtf
         Bhyl32ADcMRZ/4cOEO0V/1HqdoTgKECfdDKLHzrCP3QtlWZY0aafSQTnQw0KTu4uw0zD
         wZFn9wzEwXzAbOsHzYrD+S/KxCC/bABKOPR/Fn4s1/lW9CvPU2ZGQz+SQen9D1rXIX6Q
         SyqEmAW5EFSAUTVa7dIa+EEMKlyYmTrmLEjjZtiNPq0YosWWYupszHT4aDcXvEdR4GP+
         QPbMLcyppMJ6CzCIZPbh6ZcyeJzpD9ux7+2aMIjlxnIbwD5nyVN6ls2n8VfGKqKv88pU
         ywfA==
X-Forwarded-Encrypted: i=1; AJvYcCXBjlrIMuw+8jOeguv3ahO9rghGNdwAGbWhOnqYv+s1tAqZvYqejWzbDdNJqXN79uu8xcUv+Qir+CVl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7VkvXSuXqz2EC8M1Vnd72ZxDFeEZ7k/d/gE7ki3v0mmNNSU3f
	4c65xLVznd7XauF6ADlIX5rRQW0AKCHevPfKWDOayoA/Bt/oGF1UQuKFpakpYpk6klLXVupOKGr
	RBMBnGtHgQOtdqW/PPaBxvRSpLr99P8oHZz754P0Tw2FxR88OdZw7gdeqjUoQvO7+
X-Gm-Gg: AZuq6aK0cJmLWvl7305TwLfVjWGvPzve8Uiv64ZyusK8ynnzefkoJiD6vqGpJWtq1wt
	5f/ZpxKioD+jaRW2AKItVB7PNyJLUKvAYIEeCjb1Nvj7Q14B66jsyEM5I/cOVmiPAUXoCzFxFbt
	4aX/Zrd9f7akAH4eVKpVdCUsOlyrTSPeptbn4Z5BEgzaKYaz5/Crzytg8+HaMTvDiihWF4fRSgK
	Iu+596wJgdZHAGAvfD+bWG+PJh3Z+1ax1t9heaWcbak1aWMnpfiLO+B7tDaVuMUBHJK6oa6C4LA
	4muNFweYQthlk/jiEAb0Qa48VGCCfll+TPtPZeUQ77sepcu7txJ8meUem1+firaAg9KxQdLwkw8
	3KpnOuXCOPyky90i7jF8HWrY/Lc2hkQ==
X-Received: by 2002:a05:620a:171e:b0:8c7:13b8:8b55 with SMTP id af79cd13be357-8cb42412460mr1479045685a.46.1771314761554;
        Mon, 16 Feb 2026 23:52:41 -0800 (PST)
X-Received: by 2002:a05:620a:171e:b0:8c7:13b8:8b55 with SMTP id af79cd13be357-8cb42412460mr1479043085a.46.1771314761032;
        Mon, 16 Feb 2026 23:52:41 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac9d77sm29860229f8f.33.2026.02.16.23.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:52:40 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 09:52:23 +0200
Subject: [PATCH v4 3/6] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for
 Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-eliza-clocks-v4-3-5d09f28d4251@oss.qualcomm.com>
References: <20260217-eliza-clocks-v4-0-5d09f28d4251@oss.qualcomm.com>
In-Reply-To: <20260217-eliza-clocks-v4-0-5d09f28d4251@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=RKCYGsJFqEQSzos+9ejqQfu8ULxnCzq56BctAEfqjW4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBplB49QQnlb0qw1wGUJvCx0m/XPk5jwp8b9dPRN
 8/upQ3/mIOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZQePQAKCRAbX0TJAJUV
 Vi42D/9C82yRRnYnVLZBdbzrEdqD6mkCuKAyOuynWjTTRKAVEyAoivog70Ffk1L488gt4nP9E4z
 PEXTRo9F4J3Prcit0au2KkXuUpjG0xzWf5fcIA+vlxngQ0kGsDiLFuZWNfocO9s7yX5ahGiPjxV
 m7dIyeX7BgcMeEIPm2v+CVlWs3/yfM6bURBRUarD4P/6+Y1r8jtzakMKQazN4H1FJAT9bUx0M6/
 57jDkOvL7uNq1gO5xKMLoHzlKO/byly6DNWokzm6klWqK6UTysZoty0md5RiIbhEW5eO++NaBnw
 dtrdgIWtojglW/z9w6QeCo7q2ZeXZlszgE9t8JC3DNvGioJZM0gokKyjjocnpSkGu68izmbjkYC
 FSESYFblO6VrfTJCI0kA+AQHKrS4XD+YkGH30UT5FiDwNak2EXNzgBRzNx5mrf6paLV0tgfPfve
 QxOasgs9oswe4A3u/DKRhOn34xrJTaf4RR7TfSIbFrxALCPsAiTVNx2zQnhLneZu/iF30s6S7I5
 ZBuFqJpCde/QKB/F0vkJ1d1wmMdYZiEgnke1uRT0ufd3mwhArelx8IhiE8bzbsqbLTMlPaq8p8D
 oXfEUp3151rak6cVNTZtVaFr1MtlhSUbSBMdBKYZ4SaBUu75Czl1vJf3o0bqARSO900Eh7QUUO3
 rj1pM1HemvJPc1g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NCBTYWx0ZWRfX9eWdR1Shs97I
 g3kGHMRn8VdVbohuBTV1G2GIkXUPCU4Rsd4AHC0/NdZU8IIygeexVW5yk43OwdTws51XoZlmsF5
 yD8WfyxEXGQNCkvKwYHP/2rqhX6tIZ/UHxAekZkrLqQ5haeP2Gf1/xAZCjOoidx6zamcWxCMsuR
 OFdZqcH+rMg4jssDAE5ji0rhjSfelhKOaJ3xwDkyDjNNPLaESAGYsSqOxheOTlNhau+Q+vY3Oi6
 vVIBLsIvRBBbqJhgfsESi5otq7XKxLtWpbYAsCAD9L9QOKnKqg5poepvrQFsCpfffVAuqQbXjAs
 Qe8dwE6e9xc7Jl7xiW65fU+KEQLXO6yuFs0U0D4HdkRBHAuQBlZLjoqNP1PKJ+TqLvrpdahP0Mf
 9scvzXY+DsGxpd+z0MBq4NFkqVR00zjdsLLsEbJ4RRYmEamWQdzH9fTguX8TfMlJ7OT0oyG9vHg
 yngydBS96LVMxOQpGAg==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69941e4a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=PJhJesWDv2iQC9CHGcgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: koqZfxjqM1PEhuv0yE0wdW4-3tcStLLb
X-Proofpoint-ORIG-GUID: koqZfxjqM1PEhuv0yE0wdW4-3tcStLLb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265996-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D3092149626
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Update the documentation for RPMH clock controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 3f5f1336262e..9690169baa46 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,eliza-rpmh-clk
       - qcom,glymur-rpmh-clk
       - qcom,kaanapali-rpmh-clk
       - qcom,milos-rpmh-clk

-- 
2.48.1


