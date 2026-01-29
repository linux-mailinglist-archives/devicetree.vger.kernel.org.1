Return-Path: <devicetree+bounces-260666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NJrEcGmemnF8wEAu9opvQ
	(envelope-from <devicetree+bounces-260666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:16:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1554AA2DD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E0EB3022636
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43E32AD0C;
	Thu, 29 Jan 2026 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lDK1j6AZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bg0F+2BB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBC84CB5B
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645663; cv=none; b=WWg0orELyjFOYEBNfqrIbH5VzXw5rTgn3c9sSueuKsrtrc7xWc5rlk/ees/uR1/mzQmfsZSF18vUd888aYDfx9vFBewpWN9/QQqPV7lb01xcVLCrRDBx+ic61VPYzsi/XnIoI3Ky6O7jlueLigo7LsrMh11UCfbsjb1+kD5Q5hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645663; c=relaxed/simple;
	bh=McOFs17KMBE80Kx1yQ7dtWDsgmcWE2xvIe4QDqWpGkk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=caO5GLm7PacjcCG2NVIszj6+O0X4p6lt5kcckqRl9PbXIiFG93Pv7y/pg4k+PkOV6RSp3MsShQ+2BgXI6iv4Ek9sMic3+dWyXJR+etHNoL2LHdhXgIennUM9gC/69e3qoyYjj9dbj3qeCtoxrqOboAKflll/cYlVZ7z5cYLtnes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lDK1j6AZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bg0F+2BB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SLpL4r1398902
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bjsGqclSC5A
	+jOI39DgtAXUsVsWpwMND9DHnXWAUT54=; b=lDK1j6AZAfcF+jPtTCC8DHVIBey
	oPUMg9iJ+feo3ZUUK5Y2q+4TMe20kg4C9h6iPAZY13621rQYAGNuUoloXm21EQzm
	oJXIfEIvNQJ6XB971/aXhmIEIyhm7F900QNUG8ZDSTrpun3kFPSxTKX/8dKqPydf
	9M0SK8xvaepfDt/aPGIR5hn5iwWcJeZ3qtI4BKH0tqDGUVYXgl6NWZXh2GEiRc9R
	86m5deWZ44jmUM/m2b3jgj9G9zsEy8LRIDYRefAK5L8elmmPM7tKW32sZ076SC3l
	IxO2dAKU5ZHp61jC7N6096+msNfhbsRqoR6NrlNexGHOsyHQqa9hE0bDF/w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bytqy0aub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f1f69eec6so4667135ad.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769645660; x=1770250460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjsGqclSC5A+jOI39DgtAXUsVsWpwMND9DHnXWAUT54=;
        b=Bg0F+2BByyWaF9tWwSYWBKOX6E/Bg2Y7j45IEwNKW7Php8XNDDBrXrCdii8l7S2tzG
         zP+dgGxvWxBaMxayyQF3oYVSNU18xTm09nYiouFVXj1xYefAJewIFVz8TCfads+UWjnw
         VdTnl2nJlSPuvVagdyoCVh2GfNwSje7Ahv6TOwjCDbvpq8mVyYbP5uCJmOQBwvI14RG7
         1YPPXtSm4Zj+eiOZ2VD4NPxReivFVlrB+Sa5h2CNho5L87/q8Wc/8nkNJv9KQMBTs+48
         CNhx5ErSxsmRE+YHaQkWdUR05Jb7vSAc/9lOCaf0biC/wqLwSGSR6b67erOtWRpGsXKA
         3esQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769645660; x=1770250460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bjsGqclSC5A+jOI39DgtAXUsVsWpwMND9DHnXWAUT54=;
        b=IC5b2OEipsiCpz+dqQ14Qko4mv1h7UvqqQLPPLTbsq2EjORRZO42aNeUZO/jFN6oRi
         teVwcIMBz0+94qoOhsiXHa4GSaAQWMa41vdKPzqWolmRyViYWdNJlYojXS0Ja9tV7Qi5
         H0YAXxMELNnBMk6VI1NXn9U06DzZxmv207ZGj7d/l+9jBri1kgYlJ8MFyI5IVKCf2Ac0
         ShNhDOtbS5K45ybXV5AJeBYm3v+233c6kxZGvlNVsx8RoKYFEDdokMNH53TsFIbknrLk
         hJXJIxpX0m+1hwKWxmNBfY68Uv/pL2b72u+r+qQNJf3GGlGqQP15PtqJaCDNZTb1lcNo
         wvIw==
X-Forwarded-Encrypted: i=1; AJvYcCW740A5GxLhDwBkcgU3P03CFZR2OzEELICZ5TO5dYoI/O0YxmVD0paI1cighEQF3DYAj0xakdlBgHrp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdj5UnaK/gxORhVWjdUpP033Hs5C+QtfDN4+f75NX9Bb7rmrPn
	kemJ99u2xFQkDwOUozdaMCXcP67mq/sVoM7YMzWEkBa+EDnybRSZ7gvHpxEmygrrAmYHdID6YpZ
	g1xnbbLj4kSgJh6AwQeXlfTS22gnMRiZhEbIDBjiHUMG2su5b3Pr3RVBpCvVPtcpQ
X-Gm-Gg: AZuq6aLaDWa81AJHCWJyM2zKx7cTkvSfYTe6QOhJQUi3LsLq9yszN0KLPfKcio0PWfK
	4EyRyEihZQQyFXWU8ZqcJMIVy8eF9VAPbSzmHZjDdg8iSrjFIfxUxfQ7VNGVP9xnbG+x3P1pZ3B
	eWr3Zcc75Pkk6ezJ/X00X8DLe35XEqs1DkX92Nd6icrMwD2k4iPQaXiG+Qt2Vq772bCz26wJ8h9
	X9FSR2ROB8O3KEmVVe+v8uJfX5U5e7IKatRsmhMNbfhTvFKKMEYogY7RdDXEEEh3bdAA0xQMNuC
	9OMKRS56DJO8ItjPvUcGbvkCV7sUmyuF/hq2ojSmiiDF5Tr1N9XN439+6rwIDyZdypF+z5kgZGj
	xUA0FEUfUt4upjygvGyFXcWSE6LfKL0842G9ppqEjSheE/O6pP3cL4o15hfJzwnvX1v6XYufSfC
	CmFxRPj5IgJEY1+nXNRnKwnwmH
X-Received: by 2002:a17:903:1585:b0:2a0:fb1c:144c with SMTP id d9443c01a7336-2a870d2a07dmr71197355ad.5.1769645659950;
        Wed, 28 Jan 2026 16:14:19 -0800 (PST)
X-Received: by 2002:a17:903:1585:b0:2a0:fb1c:144c with SMTP id d9443c01a7336-2a870d2a07dmr71197145ad.5.1769645659464;
        Wed, 28 Jan 2026 16:14:19 -0800 (PST)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b29sm32055845ad.54.2026.01.28.16.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:14:19 -0800 (PST)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH V3 3/5] dt-bindings: misc: qcom,fastrpc: Add compatible for Glymur
Date: Thu, 29 Jan 2026 05:43:56 +0530
Message-Id: <20260129001358.770053-4-sibi.sankar@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDIwMCBTYWx0ZWRfX8wBjkss2Q03H
 vBFPnBYsFvgTEgmhm85PPUd3h74YJjiTapR4RKa2oc/wpemwc9UZKKbv1HaZKS36fRvVNazNWHw
 p3+S9RLtOPIwqmgN12PWXaLNkRDp4TE2t+gRsAtlXdt8+fuec42dgy/cUJObtbFiEPhbDawV3t5
 kTfwdsy6f5mYZPvGvrSVVQAXOJVJ3yQ0x19NFDFIb/raM+GGJ3EVZfdYoNlskJfzOF17PEez9/m
 /KOHYaMiQpMD4J7vQhYJbqK6BPFYdjDT945IXgZjshcd/xulPUQynGQYaeyy5hbNh9qglWwhToC
 7TTUZboxeERGUpDx9XedWGXgO4CCb73cfSwXV5Ni5gOMUxzOb6wpGsdfF9V4598yzncdKCS8/on
 3+K6MNNDt2+aZ3YaTJa/Dv6WEwe6Pu27fXDiZuHYpreiYrXnZ6SFbi4hR5hhVGmt0PaGeSbdXM0
 TwadnJ+9VvYJptzEPWA==
X-Authority-Analysis: v=2.4 cv=Je2xbEKV c=1 sm=1 tr=0 ts=697aa65d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Eu9c2-cO-uz-pbzhnSkA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 4LW2aAEBQMNBe6goHnZaLxNIEhKcj0Qp
X-Proofpoint-GUID: 4LW2aAEBQMNBe6goHnZaLxNIEhKcj0Qp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280200
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
	TAGGED_FROM(0.00)[bounces-260666-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E1554AA2DD
X-Rspamd-Action: no action

Document compatible for Qualcomm Glymur fastrpc which is fully compatible
with Qualcomm Kaanapali fastrpc.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/misc/qcom,fastrpc.yaml        | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
index d8e47db677cc..ca830dd06de2 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -18,9 +18,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,kaanapali-fastrpc
-      - qcom,fastrpc
+    oneOf:
+      - enum:
+          - qcom,kaanapali-fastrpc
+          - qcom,fastrpc
+      - items:
+          - enum:
+              - qcom,glymur-fastrpc
+          - const: qcom,kaanapali-fastrpc
 
   label:
     enum:
-- 
2.34.1


