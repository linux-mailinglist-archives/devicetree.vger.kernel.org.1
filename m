Return-Path: <devicetree+bounces-264409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LlsOm0qi2kvQgAAu9opvQ
	(envelope-from <devicetree+bounces-264409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:54:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 667C511B097
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:54:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC9B6303DF69
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A2931B104;
	Tue, 10 Feb 2026 12:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N3VXLMKY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aHswWuhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F543155389
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770728040; cv=none; b=tThr+fMXO3+zHBOtkQCQdBhfRmgS1UKcpCrzPOB7SrNkBY4KWm1mxADGptQfSeEzSiEagIeBF1JFekVBUGeC42DDHLtApmjIssScGfMefclPsKvc/vx9DtCnKUS84/mrr+z2su+wdfK4TDYKQGnqsL/8ctW/bX49L9f5CWNumug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770728040; c=relaxed/simple;
	bh=/sUdekDqliu4vzUgEVf2ZbskSPin7viNkHdZp6V0FXg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TNRn4yfm4YtPCpMxmQ5W+18hVdneaHLRkiud2rOfF/DTTVGcvRzr+9j74Zv5EmFpNlYN7qYQBHrxucEPOkp6tAYpevNpRsY1YQ4fiEBX1Z/Nvges+qzWkpvlsYS/BpjMOeO3MzTCPRyZx5MTCdntj/HAyTJefqK5zjQt6exbPSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N3VXLMKY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aHswWuhU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A965Zo1231738
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=O5AXGKkTSwpt6tH1a4P0ayNqMsI2BiAyd9+
	cuD5b5KM=; b=N3VXLMKYLn5Bs8g6X8eH5h7WMZ3LUvyeAv/kdrxQsg8UagnNNbq
	F2n7ESgK4wM3YmWgl4LHWV7wcbs+SMDHitDqaudhFjztpSwOgliHSEr7uf0XanOU
	xeafd4JQDLgiOxQS1om+UfCZmddEDVh8vc5K+zWUVbFJDTRs7yzBgLgrkXfm0+CI
	+3YRDgunN+MObHh8xPmRFWzg1MuqiIxOx0wlMHlZ73msePPQGGNbLxuMZgZrkeu6
	9imNrr0KF8vcptcFI08Rw1t5OqoxLSI5OueahivcWT5qe2wt586J7TbB9lE7K0K5
	M5yrFee5Xzp1D89lJ1TjgFNTsAtwoHNwW6w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv59uas-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:53:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aad60525deso73790105ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770728036; x=1771332836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O5AXGKkTSwpt6tH1a4P0ayNqMsI2BiAyd9+cuD5b5KM=;
        b=aHswWuhUXuBWuqh+JqicjcHh2oa3nBOVcudhTnew8ovk6PcxsCkfKjS5p5kYEraRdA
         RnJFJOtiUNycTfdlEWxsrhaGRcdRQg5DujPTq1Ic40e3+y3o+fpTSdb/mBCADipeFKaO
         RyZPUZxsJAGy8Hf/Ar9SxUc70s5kx3B0cWG/P8NPA6RpF+Vx5UPBWGsVLSokrwCBfa7C
         eg1gO+gkV36X0nXg4boXhyEc7dmsRLhjxkY3qesXKOrsSC8L4tSZ1YeoOrkdpjlz59pG
         jTX46jHqU9L0p92fYKdXwQ4YCFqYrkuqZT2U+aYPPAKQV5QkM5XNXIb66HXyr3uNW32g
         V7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770728036; x=1771332836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O5AXGKkTSwpt6tH1a4P0ayNqMsI2BiAyd9+cuD5b5KM=;
        b=a21kuExKGoB8wtgeiOe4radKMJ/fNSw/YgyggeIN7HhC+ZUILFMHVODV/9xd0+1QdA
         dgGKzYuMxDhSZZOJ4/PZQQc8kq4pdn48NUasFqgCQ45dQFFvWS5UyV0I3HqI7P/iutkk
         znUL5DGLpC5ZtMejMheS6chiWq/BuWiOFJ6zmoSDH62XZId7lJQV7gF5LXDjFXYYDcqU
         JO5Y3DaqZRTw+HSvHHtb3sKBF52wDmpFcGJatigDn6NN4MMNsuUZDKAVGoneec8lLNoz
         8NxLxXF9RjWkqfEfeRHPib5jgGijXpCQDUwvrqrYrOHnbFvWgey4dW6C8yDVYU6R105t
         ifdA==
X-Forwarded-Encrypted: i=1; AJvYcCX48JLJYv0JdXtyFpz1Gs161xHNNHsM080XE7NRpOsFPazulTzQ3+YRGP7SUxP5BdLtr05ndj5lkIfy@vger.kernel.org
X-Gm-Message-State: AOJu0YyNn0XUVx4pf/qnF1qVHy8syQizS19pWXPuwn/XSjGgEZU9XUlx
	DrUH1Iv4QmvB0vYOuSBbcajymkkbP+mMYZJ0Z1bVA7fTY6eAjksIsSKFLnONlvW5G7wQICneV8W
	Gk5nyCArRKdTASBG5uovnle6OEy61kTlF+x1gY3bEJYJQKLnbwIDFzSjxwHAG+jFh
X-Gm-Gg: AZuq6aK0cDzdRh/cgnXcS7sCBAR8U9WhVL3nUnL9RWv54PYBiRqD0inj63QGdBReswc
	nCNpX+vS+43KBEKr2YIc/LwXkfjB5+i1+2L5iq8OxkSfIwkvD89vTNqOXTTH146+tw/6ketPFaf
	W2vFqjwx315dMiHhqKPyXRX5h9yVIUe6gwpak/3/UZItn987Sx/p7SWOSXFPhjUQYDWDKKRex73
	ZDf+zCF3GHHvZSF60LkMMqnO9Su4eGm/zBGaz2RLFeqidWQgjQmpLX5tN1TAGT3ecNznATqmwzH
	AqJdzoexIdpBVQC3vOTMfh5ExssbQyXMIw3w74RTSCVePflYdOI7IV+857ea8mTaWhH6DYC1/kr
	tPSybsMkJ/QfyzOh/pfnzOPub8z6pXRmvGPNOvmfLetylMbO4qz+Vynw=
X-Received: by 2002:a17:903:3a8b:b0:2a8:d9ea:8b59 with SMTP id d9443c01a7336-2ab1054a371mr21171595ad.7.1770728036234;
        Tue, 10 Feb 2026 04:53:56 -0800 (PST)
X-Received: by 2002:a17:903:3a8b:b0:2a8:d9ea:8b59 with SMTP id d9443c01a7336-2ab1054a371mr21171425ad.7.1770728035781;
        Tue, 10 Feb 2026 04:53:55 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951a64990sm185356375ad.13.2026.02.10.04.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:53:55 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Enable tertiary USB controller in OTG mode
Date: Tue, 10 Feb 2026 18:23:46 +0530
Message-Id: <20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwOCBTYWx0ZWRfXzFJM1feUoUsB
 hTjwn9izgBoOQDeUhBhBUV51PzSE84FMzdYXKrubR1vsb115K02j3yrEZ9JU1iNCwz8mqimByUo
 FHWx8JYiHRtrBum2/fzARAXU0GmSjNTePB6ffr0LwkQZUdTpyJA5RGHNXh00jfGxpztjwij1Cnx
 UBBZo7oF4hM9DozhGkQ+V+81dICGftMqKx+1FaIgwtLINrXjZPb9jA71XCbC1FWD8gaoC6IqVXr
 gxl+qSVEgcyZ7ZTkJsayEcrz9XSvJnv4fjpiKtGcc4IylsZUdgboQh/ErZVF8aNf46R0Fe7i9JY
 5BFca9CyKb37inScOUWfPj9qe2y80jRhwQ0/hhqhxcYS91MReTpg3vcYrWoPvicwbNFGRvkBcMh
 YYTASyM/ne0fMJanGa7FomGm9pOUmoNhVNT/VOkCwNK2j9gxwfjk2OcUb1wsWmLhCXvZGFcuKww
 lFU4RqPnP9MXiHR9ceA==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698b2a65 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=ZYlc2bHgbGXsrt5v370A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: E64pgMklhP3hHpOhKMjiMrAhAzyWDgDv
X-Proofpoint-GUID: E64pgMklhP3hHpOhKMjiMrAhAzyWDgDv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264409-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 667C511B097
X-Rspamd-Action: no action

Enable tertiary USB controller in OTG mode on lemans EVK platform.

Changes in v2:
Added interrupsts for all expanders.
Minor formatting changes.

Link to v1:
https://lore.kernel.org/all/20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com/

This patch depends on:
https://lore.kernel.org/all/20260122092852.887624-1-swati.agarwal@oss.qualcomm.com/

Swati Agarwal (2):
  arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for
    Lemans EVK
  arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 96 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++
 2 files changed, 103 insertions(+)

-- 
2.34.1


