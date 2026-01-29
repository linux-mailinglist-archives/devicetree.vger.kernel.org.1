Return-Path: <devicetree+bounces-260664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCPFC4qmemnF8wEAu9opvQ
	(envelope-from <devicetree+bounces-260664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:15:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7B5AA2B7
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE0AE303FA99
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDF235966;
	Thu, 29 Jan 2026 00:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbP7kU0z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HIXVtPYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6E42B9B7
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645654; cv=none; b=kfMjgUyLXGvaUe8e20QWQoGm3klyTR3PlaNb0RvJRC6tGCfE95csgjYzhVXkarRL9QmU3dhcXsdEU1eNvkQMeNfTZXOfG+ToMzCIU1Wgfo9AROlhbCZvWlQ0hx2vpIxtFI3xelvR4I5xbYpojS+t7WUN5cT1mtiy3TjyuVeqLwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645654; c=relaxed/simple;
	bh=ALJQccgwvxMyPy4jgq72eBHgDAc/So47UykbbYk912A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nAltLB8uxOC3n1Ch0DM9ymLBudczFhMIuhe7SgGfuuiIHL4JU+qur7Nka84W4EUWZCZClcYheqR8hBUfPf6cfBKaOQ3ctJ9B8fU2cSJbnvmsyFnrXtLNuI4BUUGM8AAvbnNnjnhyYzaAThBKLNiF82x5R1r1mbfpeUzUMKLVi+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbP7kU0z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HIXVtPYC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SH7j4H1129665
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=OfaylnNGhIk
	IHTKate/d8zrf3cT86hekrNWW7NaHpDc=; b=YbP7kU0zuSe6B+DhpFRyASXT2sZ
	ujd0+OGIhF6hKV2c83JpFgRtRLrUoMbJYl+W68lG3nrAiA0NrA/h6EEy/TaKaWvU
	963TkcOdyfOWhYL+aeetAvpr8WVvzGBCaVmnaHhDA9hyV4NT7Z4rkK26mPjT482j
	MbARou1+lN9n3SF6lWiExp4+qPnvwqwqZW3z5JnBRGVRlIEJhy3ktr2KgftPeiDX
	HnFyCh51SvA5qYPTCgY9/3J95lYT5eDC+x7iEgtM3oNzAzw04YqDPAL0PM/EISmR
	x8F5mhPGKCwkgi4VgMnpWjNeqETAuoGwFz3kROUDAoHZcTd61+qSlcD7lGw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bypk217k6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f29ae883bso2233155ad.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769645651; x=1770250451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfaylnNGhIkIHTKate/d8zrf3cT86hekrNWW7NaHpDc=;
        b=HIXVtPYCo1KKEyMu7wC7t19sJjeyRiV5t6KrXtIB8G7Jm09BVWoRRKSwTy5gbaZu2i
         mJ0qUMH7/5umFmRgAbaNrTPU0RufTodWHKQOtMwtOjYs2kgmAEAXmMZXXSQUVAIxMkev
         lI5PzTonFczlCLpmjBLci1qeS8dOtP4rYY4AI7783cfknnD8h+9uSWfAko1IJu4Wf2kT
         XBwkoJdvuWcoBkvRSRgJDFyMwR3MQYnKzu+g+0I2AT5+8wnOm9P+RP3ZFD4uRfxCkfuR
         U+eDCWATquBMVcgu61oAzzOZzHBdCbqnYuqAJnU2Zf+vlt8Qf4XWkwTBi7KbZiLOL/56
         QHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769645651; x=1770250451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OfaylnNGhIkIHTKate/d8zrf3cT86hekrNWW7NaHpDc=;
        b=ujJiV0uJ7bzHJwJdLUdAMBmyphdU80q81RrPLOZoN79dKzpj2FGu/qukG9cGR3fDJf
         6JYeO1H57FNVCveIb7YXaSnNKfcCG5FcOed4aXabhKOBzIlCkaOxZ/yomn+WGQAPT4DQ
         xkvIvKbCxQwEytD/qWl7XbLowitNt59cdu9Fjsr3EIKhrJ35S+uXtrlW1yALqbhObRVG
         wUxBrRG8IjyVi5o0DMK6TfIF0vzMuaIAMHDrLKMZCd8TJNJrhGYThKhNblxsvODoGI+9
         wvn4tJnz3VNfpGG/FFv3AY+YSdk8pnW8rHIogieMYp4f8DmPHoe1Em13oMxXom+iMpBX
         VUgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAcd88X004SdImYOLdwQS9hSvHpwRUIB9+r40rIsK53WT+TIUshvkv+vvAUl6YMTdYbadgPe2Nli9a@vger.kernel.org
X-Gm-Message-State: AOJu0YypzEZUkyKVqdRB3ANRAdSzrbFZiPq2+IdYkjUlcswegwf8en2S
	SGbiqx9Xh9ruGil42vN9WNXSOHEFIOWtnfKlbdWGrsjyV6XDoAnBuhdDAqk/8fI2O2aTXxA/PkI
	3ndswuD4SdFMW5h9QU62jTasD/7enNMivlWfTLxIgGuhQZ0LFOyDrHnIZjuNrxmBu
X-Gm-Gg: AZuq6aJ2aGN9VWG/I1SxzshkUg5xg2miZWJnrhVNf4U5vlev2A9zJ1s+mn+EXcbWYXe
	GdpcHuGZd5Uap/bVOcK5g7bINv+sxQl2uG5DBXZk0MY6RX/c0nsujz8jRS8nw0K/ioSJTFMlQ5G
	23zW/bH1GklxRwkYJJ823vOH6Xs4L7UKwie5Pm+bDRz7sd2V7ghtgYHzOemfZQH5+oTA3bM3QB/
	SGSgUh1u162/EHX0zAktjwD+zU5JJrNcIQORJn/DTPiBsb46Vc1VsXt4jLHvfmnLgmsDLTpUj+L
	GcrLksM1rFuBvmS9xJ4WbOck1rwigu8Sf3pXeMo7ZtA0E8Dre/gqWk6cEBMndZgAJ1BMw4HvWO0
	iYyrgu8L24DojXCvTOpvc3BMApr1e5fMMIpnsXLmYJ/EMmRWgBabsEsCsi1WFcijHz3ghOd+SqM
	oyF6LLTFykEb+5ZQSrtQezoK0s
X-Received: by 2002:a17:903:2291:b0:28e:a70f:e879 with SMTP id d9443c01a7336-2a870d49b23mr58323235ad.1.1769645651361;
        Wed, 28 Jan 2026 16:14:11 -0800 (PST)
X-Received: by 2002:a17:903:2291:b0:28e:a70f:e879 with SMTP id d9443c01a7336-2a870d49b23mr58323005ad.1.1769645650899;
        Wed, 28 Jan 2026 16:14:10 -0800 (PST)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b29sm32055845ad.54.2026.01.28.16.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:14:10 -0800 (PST)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH V3 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur ADSP
Date: Thu, 29 Jan 2026 05:43:54 +0530
Message-Id: <20260129001358.770053-2-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=PfvyRyhd c=1 sm=1 tr=0 ts=697aa653 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=I8BSNejkaQ8d0caDSfYA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: MzntJi1ATMkWeTFyMea4JidApp8xdVt1
X-Proofpoint-ORIG-GUID: MzntJi1ATMkWeTFyMea4JidApp8xdVt1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDIwMCBTYWx0ZWRfX9mG8blrYlW6Z
 it/74o3qzha8y+w6UGHFNpXcDqoZuBGhRMpLREQMyL0KIlUeNAkiX23DpACC1Y2uSUkO9tHZ1ti
 NvvfWT4ESZRFHqKrkFQWayWbZkFc/jng49vChh9ksQvvQh9uS1wXLpRgmgb1J1yA/BaYj8128gV
 mIHXk5n4ukrrfpkHvh4d8csTy/EFzYst9l4+kk/1iFJ8NF3USoysdrQeRlnbaxL6k4q6vLtk0S0
 tPK4nEv/3oz5jaUpZT0IeG6ayuyo15q37UdlOHur0+bqbN3IifeU+T4Avoi78S9nTlhQldwE27G
 klmmdXtM+yg7cIlo6LH6P/NOB1XtXpJwHA+hkXHMdaFk1S0C1AHxnZs55ucAYdvM9nuXuXOMO4i
 mtR8EsaYA8xh0JxbScRZucEYfD+mDR+kT1dQDjZk2L9+pU1fGv5tSyseuSJCJo1N7b2i8Tu45VT
 JlvNMhzsZ7CRftU/6ag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280200
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260664-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CC7B5AA2B7
X-Rspamd-Action: no action

Document compatible for Qualcomm Glymur ADSP PAS which is fully
compatible with Qualcomm Kaanapali ADSP PAS.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---

Changes in v3:
- A few variants of the SoC are expected to run Linux at EL1 hence the
  iommus properties are left optional.
- Link to v2: https://lore.kernel.org/all/20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com/

 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index b117c82b057b..fb6e0b4f54e8 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,x1e80100-cdsp-pas
       - items:
           - enum:
+              - qcom,glymur-adsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
@@ -101,6 +102,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-adsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
-- 
2.34.1


