Return-Path: <devicetree+bounces-260755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAHXOQ8Je2k6AwIAu9opvQ
	(envelope-from <devicetree+bounces-260755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:15:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C1CAC83D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D19F302E402
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 555D637A4B2;
	Thu, 29 Jan 2026 07:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TDIJHRnx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UoCytti2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D495137A488
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769670883; cv=none; b=B8Hn1AGjnFCzCn211G1OvqMLlPpb3DgJ+qT9/CejTCNCsmJJStsCsO+vbAu8x71EB8TKNiA46PaVAI7RP6n6oua0idJxcxK3Sfkr3RZXsN4TPIKy68QAkSXdRerOZQBJDNa22x2g+yD4FmrTde0VyUEEZT3dN5sto/6QnURGn9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769670883; c=relaxed/simple;
	bh=TzEbhNiO3m1kv0iBmTKjZdsYicpOtSOAFcV9ephYJow=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=TiapQzdcdEcvNLNE4p4I5p08y84ReeK7FXwq9GMhU5pgSg5mzwZeFS2sy617U5/kESRqIJaHmksgKuvp3gvrDDGzI9w44dz/ZOwkLv1Nru+DmINmVZmvf1F/ftAE0o79Kbxhn2GDNpFUc0Hk9nDm7/0KCIX/SnPsj0B5JED335U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TDIJHRnx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UoCytti2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2okTd3143761
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:14:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	qcppdkim1; bh=BHw4E5ImxsbwzBkLkDbQKI3/8jLqyDosTcBL/JZJaIs=; b=TD
	IJHRnxd3gmlJxCriuzXw2n0EOpGaQ+UJksHyOkRHVzOEeKdKx9J/Vz9WaiuI4NWR
	A3zL4vV7ehv+8mmcXCU/ylGNqv/jItzhhnDw1WL4JyYYdEjCyaI8u28l5/wgZXgc
	7C0WGknd5RBYD1/U9Wv4uHqyP9X8UfjFymXtjxpf0+exaw3cKljOQWRYZQfivn+G
	4kc6/SSbwX2KYJ/Gal1LT4xelg/Z4evOSKk088pEAryDEveuUGvh3krqPznBLmgl
	MJVpRKKXefgfSfCidQuQvPDGugG7EdofUcayFbHaY0leiNX9xIgRQ5uSNYpa5Puk
	ATFqJ7cixFOrx2XpH5hA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byqpxhy39-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:14:40 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b6f0b345e3so5117349eec.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769670879; x=1770275679; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BHw4E5ImxsbwzBkLkDbQKI3/8jLqyDosTcBL/JZJaIs=;
        b=UoCytti20xMPisTxUN/ZZVFaeDlcM9NteJFTsGN728SdVlwsg0CZpH1wgjZUZWwjjK
         vlhDTh+xtxI5G1+2yYQ+4j2kmA9JAEyGlxcnYTskL90dISK1QgRNcnTUeS1nEdQSHmAW
         gamA2RM9ruE478nqqNxeV3rkL4koh0O8hi1+A/zViyAINmImdeqcVguulZ9kiEdyHM1y
         ETdw1infcDqc0c9jHFFhLay8d4EKHAI3xytoDY8metKPkeK8NyAntut+ZZRtrNIvYHdi
         A/t4m2uqzzrcl4LySXUTaU/7CXlPfwHWZ/vtdvgQzZlHRSE4LvDxL/wrhMGUKPasazRh
         DClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769670879; x=1770275679;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BHw4E5ImxsbwzBkLkDbQKI3/8jLqyDosTcBL/JZJaIs=;
        b=O/9xECkytDDR36AlumHsCpAXq2G28HUxtqiYop86VVAynucKHYo1N1UQY7s2Gi2Q7V
         PpERljkFoMqe45VTTSC7xfs6ihzfIlHG4GiEjVfcVC6PLnJuYza2+9d7aVmNf3h3FsaU
         0/baKcJaGT1agHkZmOFVFX1wVaj1JyygVs/NsBdVRVAEi+P6lyddASM7JS5/xWI/JV+H
         f/jEjLPcZze9Wq5+AUOkBU+8LkxPNdHhu1QDaKTWZD+elkAejcbDU/I30p9NLmFHybCp
         P1CbhigO7rexMqLlk/nqZcFznQljPvn4wWb8iUOh8NgaQKOdijRIffIjPw0HMT1rT+dI
         ipgw==
X-Forwarded-Encrypted: i=1; AJvYcCWZ187aUwwZK4WWqsIW7qlrQuUQgcbFtwNSFszLjB3sGUu8fiILRC8qCyBLCjWsMUhiPzhtKtBSTaKO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2npp9TDlJQigc8qFdgKXKcVW5USkxvyQpWDl+g/kN2CojDE+K
	u83Z7EfJJENqv/GGIC8VKtmAWvwSSyeCTkT+UtwKKZ/h9uDrdpQt5vcndueQQ4muDc/vdu96+ot
	zwN+taBqpgrcRxNvG+zFma2cGpg6sxNaR7tw4QnbvF+BPGCW7h557+gx2GeIsDjKErc6qtaHj
X-Gm-Gg: AZuq6aLVq+kPyV32awkwYFClcTXJQq9ynIK9b9swDPD+jOXfD0ZUY0OYoraAuOKeEC2
	YvUvs/8Kv38KneX0QnAwNGk/e6PhfBriXrjScS+pCTki6IvVoIdiBk24JrZl1ybkAnKfkGB3PJ8
	+okR6E83UL4qy51DFh9g5HO4Ma9Bn3GymMbmU8/fPpdLZ24RFug33MzhAwChqZM67SfQSSbVLkE
	lFVD7O+omoG3wRR7W8Rqs4Bfx0ic1qSRBV9n4xLVlZox0VE7F+V6mLF1uS+LoITd3ZGwIpJLKO/
	fwc9wttJxeNcl85G06gfdY9yZE2vbAh6TW3Jv8Zgi7Zz6gylurKDDceL+IQDS1WnRPLMZnUNko2
	tyOY9cEVJLrm0sfHfX7mwQBkYO/dyvguqLvu3Sa3A4uEolOxvOxGBTj8uarc=
X-Received: by 2002:a05:693c:804f:b0:2b7:befe:3748 with SMTP id 5a478bee46e88-2b7befe3deemr46580eec.25.1769670879477;
        Wed, 28 Jan 2026 23:14:39 -0800 (PST)
X-Received: by 2002:a05:693c:804f:b0:2b7:befe:3748 with SMTP id 5a478bee46e88-2b7befe3deemr46570eec.25.1769670878947;
        Wed, 28 Jan 2026 23:14:38 -0800 (PST)
Received: from hu-anancv-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16d01c4sm5879760eec.2.2026.01.28.23.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 23:14:38 -0800 (PST)
Date: Wed, 28 Jan 2026 23:14:37 -0800
From: Ananthu C V <ananthu.cv@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ananthu.cv@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ananthu C V <ananthu.cv@oss.qualcomm.com>
Subject: [PATCH v3] dt-bindings: sram: document glymur as compatible
Message-ID: <20260129071435.2624252-1-ananthu.cv@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email 2.43.0
X-Proofpoint-GUID: jcwXcNPcnmfRdodyI1YXwtbG3whKilGi
X-Proofpoint-ORIG-GUID: jcwXcNPcnmfRdodyI1YXwtbG3whKilGi
X-Authority-Analysis: v=2.4 cv=dfSNHHXe c=1 sm=1 tr=0 ts=697b08e0 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ff_ejXsIRRER31PdSKQA:9
 a=CjuIK1q_8ugA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA0MiBTYWx0ZWRfX8q0VDWG2wIX6
 MdcIOb/xqiaVJho+dJBZLZFf1Nt9nwwe8U9cHTCB7duuCNH2nMqKj8KhqIcJ1q8iZC2buzDcRPx
 EDyh9lYRmldcnu9EQQa+eIi54zXghSO+wUz3gn3MHqwNJZmhqNLNFhuuaGT7ti0IMMz5wSSDU6V
 zF62gfVqRBHh4pExcffU3FuPqTk480dl2Epmwr6dDd3DD30WiCdgUGQStOl/mpu22/wsM4IP3NY
 aidNIPVbMI51KRzikcYkSAL9YgqsFt4LIaxDlU1ic58UAJztEFRUrB19gpgzkFtcb7/DCf64jkQ
 PWluIWMQzc+gOWcKvbIT8ZpeWF98G1FsAh5/a5cklZrzcH0G/zVgFBGac0d5TL7df/yg4yl/Imi
 53Jxiuf703hyJhzIpSGEjyLFfZN9YuyzhYKfQeYhicCLR52PwAcdl39ejzWGdYY7zCW4i/W4MRS
 zxGSZ0whfpdAsXrcNww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_01,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-260755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ananthu.cv@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 50C1CAC83D
X-Rspamd-Action: no action

Add compatible for Qualcomm's glymur IMEM, a block of sram which
can fall back to mmio-sram.

Signed-off-by: Ananthu C V <ananthu.cv@oss.qualcomm.com>
---
Changes:
v2->v3 moved to sram.yaml for mmio-sram fallback
v1->v2 alphabetically sorted the placement of glymur in the list
---
 Documentation/devicetree/bindings/sram/sram.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index c451140962c8..bd62711dc630 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -34,6 +34,7 @@ properties:
         - nvidia,tegra186-sysram
         - nvidia,tegra194-sysram
         - nvidia,tegra234-sysram
+        - qcom,glymur-imem
         - qcom,kaanapali-imem
         - qcom,rpm-msg-ram
         - rockchip,rk3288-pmu-sram
-- 
2.43.0


