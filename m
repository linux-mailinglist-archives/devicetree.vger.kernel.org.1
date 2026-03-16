Return-Path: <devicetree+bounces-276183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENhiCuAKuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:51:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B891029AC42
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:51:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0C4C3063429
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF9FC263F44;
	Mon, 16 Mar 2026 13:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o1ZRHkrx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UeNfcFBq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A972D7D27
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773668774; cv=none; b=XravitzVaBNOPHVm/4kKpp07YJbysTZCFtz2ksGF36/NIBecas/m6JjPA5fe5KwORMW2zrJbqnOdtIBkiV9IhVixMZIQ7xT3V8TnbOjNfuwtXyGM+0IIP3+uYTcJBnrktVrAJy37FhxgtbJT/ElJik4RmtN2jIOr1wN5QEpOK4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773668774; c=relaxed/simple;
	bh=vh24VE2sjnYMckBTgg0yZ+Aajseuy5CqDMz0MME1XnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kYsCQ0MF2maFvJD93p+Gql4MC1+ob8/j4pNoglgkkX2kg++d2dbXdNTI9x6Ak28zxy3Dn1nti8Q0zSJxvxBmX39a62CaOifWzVTUqBFMcmT+QudJsoYFY1gq6yIaB9edCzJsw1+MJ+5w0tXfZS+zfZmDiTCM5gZkDtWd2RqQE1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o1ZRHkrx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UeNfcFBq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBYdNM1282126
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:46:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=BG9HMbl6zyBELeZS1Hs4NCoLJWZuv020DOc
	rjDlWN9s=; b=o1ZRHkrxi5s82PJN7V8duHnQaRhiGRjLmY+EAOFRrIvfQEIREFl
	AqXu8PXs+4fidQ8Xojg03x0GTPa0o90oPaj7q1iEoY92m1r2EJetlXRxtJ3iGQQA
	wObiHqXttcUc+mGITl9wnJBE4z0gFPYYDOISvb+Fdf5oLHew+PRCDcSvGhIEdEkF
	h1wl7bMRkaGxGN4acLlzCM74IwjSrqKRu03DDcvw/WpLR3W37t/RDkjXjJ1Zo98C
	0e5xiymMiSB4fIag6dpo4iwUxgmSVfCueG+BympvGMn37RfjGg59kwiqwGckICAN
	PJHuupslwurNRDhsp5vW3mKI1+sO6FylbQw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc5v6p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:46:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd85e08fddso5005298585a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773668771; x=1774273571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BG9HMbl6zyBELeZS1Hs4NCoLJWZuv020DOcrjDlWN9s=;
        b=UeNfcFBqQzJc/sSkEYNR+vn0nGCYTHDhz8wjmtx1FbAecwgjlJ5idxnsPjepRaJxoh
         rc1ZetJY72TWkCEiXeskINMCWEjCKYqYBWHvMJVnqQGS2uwGuwaExSEY4S4B3Cg31lUi
         HSaiGwJHJey2NTL5q5hqtdcvqk5a5eHFSVCNBhBw/1UGS1RgyAdcNn9m3n9EhFWHZkxQ
         u2PqqycODYLb/ZwFpT4ZS8Q3zaKM9Kf4U9KBhPcqAo4/kOVQnuZV4ppaxex/zJwfxKeE
         X1AmyWK/wmppZeO472ioMUo3luh7+dFskfWdlTispuM5oGJjJISjmuKRG79tTdV7wn5E
         6q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773668771; x=1774273571;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BG9HMbl6zyBELeZS1Hs4NCoLJWZuv020DOcrjDlWN9s=;
        b=AsxDpchaG2vNoOrigro+Q7V/ayy2rxFLyhDmfhUYcmKtrDL0lcjnNTOIcaxdEatwVc
         htYw5bgzjMwR0ZCzoJWAHUScoEYvhsh1g00hXP06+rppYYOx9a0kLLsHs9aUNSZM8mQJ
         MyD4CtJoJ0/2z+nNY+1X64yPZmUbvyIyfVR5aBXxolZCObLFeSpP0/kAbZCXvYzghSLK
         fAFp1V5Tq2xWkuKTkfY1JkgCVxSxeRcn3GDNOBvBDWALnLo/SFMoY6HpCc/lTTWgnp9h
         +B3ZBJT74kAA6Ko6DYESutQ2tVaOz5qZEEFnsbkIjkVuW72rv6+sSB1zHrjcOcEJH/mW
         B1tA==
X-Forwarded-Encrypted: i=1; AJvYcCU9Vw+tAe18xxKfbAp6Dw68Lsk2E5oNJevlR5fRGiS6PbkpZphY02MpjCAxh+/WQEQAoHYD10IoJ2OS@vger.kernel.org
X-Gm-Message-State: AOJu0YyiHmzOkX+SKx/ZATZ6lw/cxnPu1maxXZ8xjkFonemFcasWmS9C
	l1ywmfJJbbw4qHYqibHMvylEJnpYbGtBe6JZat7AkAB0DrI+kEPIEL7bIfQJP938LpLKedc0uFp
	2ldLfk5KxbfyObzj5RQ2rDHELDuaE3Nyu/velQHvJpdX/mSyie0NMt0RfMceJtsha
X-Gm-Gg: ATEYQzzafoihJJ/kzV1HjoeM4DnFW6oVr7wq0XYphlAc/7IOHxUcou+AtzHuP8CUVPB
	HmGnBKLhTcnjpl2vNtkykqSOdBV0Qdo5E7sz9nEKdnr/y1HNgSZm+fJI5xzgBH/4QQz/Bq/uWs2
	cN4ydL7teecD3cXe4YSlE5W94cTaFFUdzacP/5Ws0SIIFFS4IgjKMlyT9gu/eXRw2fzQPryb5yi
	Fk5mk855d0+uTA7u+/vKoinckycST2ppKDIHpo+65duxBxpRs0VvGsliWMX/T7bkNDS2JhR4/Jb
	Q92IU3VC1nKqsADVOwzZgPH+GdU5I17RbBc1VEgx9zu+/lkcB1Adp0tGUXmbrEp8eF5dNJ5aV/e
	l24ssd2VmFgTVlkn9HTgz1FTuABk+ymtvDKMF
X-Received: by 2002:a05:620a:4005:b0:8b2:f269:f899 with SMTP id af79cd13be357-8cdb5b926e6mr1696836985a.56.1773668771508;
        Mon, 16 Mar 2026 06:46:11 -0700 (PDT)
X-Received: by 2002:a05:620a:4005:b0:8b2:f269:f899 with SMTP id af79cd13be357-8cdb5b926e6mr1696830785a.56.1773668770998;
        Mon, 16 Mar 2026 06:46:10 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48557c7220dsm91275765e9.30.2026.03.16.06.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 06:46:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Adrien Grassein <adrien.grassein@gmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: display: lt8912b: Drop redundant endpoint properties
Date: Mon, 16 Mar 2026 14:46:07 +0100
Message-ID: <20260316134606.57070-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1069; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=vh24VE2sjnYMckBTgg0yZ+Aajseuy5CqDMz0MME1XnQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuAmeLqie4LbWOSHF6SgOlyPUeRL0QXDl/hOu/
 0yotx7r12mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabgJngAKCRDBN2bmhouD
 18avD/9XP30qQcyYT8f7RDKU3pQbvzDa1pi3rW+eDY3T8v8/Ie3/2PdLXfACru3r7y4HxuMYLf5
 hxWw2xF39pVD5kWl9Pqm0BrU8KMMG3igjfMved3fdMCxVXxl/fgBC+UMfsThmSLGqRGP1ct4mDX
 wbwgkM1fS28/eH6JO+b4FrKgLfhej/z5OUfW5OSZjgT0DHqsRdtQHFhcTTRPgt4hfQd+ksAadPK
 qMx9GCNyUO7UP1RQlE8fd44IBuK1SItuPDBjeEifsjvmA20uZc+G4sej42TqfYDXUUJqSpSE+Xo
 sF3UK4aPSgDp9DuXiotTtSrK9VpsvFhXtNyAm9MLdT35Cq4xts4r9AedE4/AKzwBTpFVUJZ4630
 UxZPpDF6GbB8N31gN7UUclZC8i18ESQWOc1FoAoMeB7LS0FS4imJQKsQFBpVdneMpCYfIGHpC8b
 4I1fPXgNMLgXIjSZ9SgkHceD/0UNYVwMExOIHtqjfrQvyhCgKU5F6/2o796DZyFFlIeC83gDlMz
 pUHrnhfktCTySseEG00AeyywI7JHQy6JfP/fALwmzGNovW7kH8KHpBzOJEzCpjHg0wbZLepecIB
 B/ZksvuNgWIZ/TOcgo+u63WeMi/zihRKLkk+/e4149VIr2Xe9ijGh2FlUNcrSEChJ+4oqZ9F0wL xBm/JUPba3C+Xxg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b809a4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=X6E4nzaopIIGKyYGNtcA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 4xMt5ha8iq2fe4kGBGDc4hdOHxTI5jUo
X-Proofpoint-ORIG-GUID: 4xMt5ha8iq2fe4kGBGDc4hdOHxTI5jUo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDEwNCBTYWx0ZWRfX8qNb1V1/pWnk
 ds13MKWFVZIVSQPgWiiIfLmFj2Z/7DCzWu4GQ/fGMnjxK9pfM58eaSKjWjaWjl13IDP+Dn7IGpP
 5Y52SExHszrA3Vm7+SxtzOplOBaRHjODtAK8Ro2QxthVgpCIiVDKbEhcj5mgKLvawA55EabTkJX
 uKawns2gg8qkoH1f5w1GZ0wuh1JDaZrHE5iQXo2+OTnrtzflN16bUSjcKZLx+xaDDTvJG6AGyui
 40l4ludbZqf87Rmnn6gFtFMaRa3N+NdM5sAsTCv5psuIcau5MVcls3XT/tkZA0eMxRTctESVzNk
 kF1pZJaZTq3cw0mnAQtGKY5eJK+1psxGnSosVUDkfQ4oiidmvw1TsLcV/Tjc4QLhUBia9fSO7Cb
 XUCiNjBgJJaT0pf4eLl0i0EMcpaCraP9Qj9RfrxFZ80yikDnMJwPk6gslg+zFKlUtuwZEPeV/Fp
 IOce/ju+42Wv3pGRqLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160104
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276183-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B891029AC42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The "endpoint" node references video-interfaces.yaml schema with
"unevaluatedProperties: false" which means that all properties from
referenced schema apply.  Listing some of them with ": true" is simply
redundant and does not make this code easier to read.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/bridge/lontium,lt8912b.yaml    | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
index 63f000ebc9c5..988351f3cd01 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
@@ -39,9 +39,6 @@ properties:
             $ref: /schemas/media/video-interfaces.yaml#
             unevaluatedProperties: false
 
-            properties:
-              data-lanes: true
-
             required:
               - data-lanes
 
-- 
2.51.0


