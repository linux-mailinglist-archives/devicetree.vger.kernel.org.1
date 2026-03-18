Return-Path: <devicetree+bounces-277104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCacEFl8ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:20:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B80B2B9C7C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4A8773004C9C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072403793C6;
	Wed, 18 Mar 2026 10:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AO6gVmxy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SHNHi7Us"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE38C378D93
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773829189; cv=none; b=P67z2VdPaWd4nCsj3agbpEnXXmKt3yzlAZuUTAR9odsTNcMDNefg8W4sZTLeXB5MEFGcW4fpuej3gxW/NOyQlaTnG3oH9lTI2SvftaAl2cOlQ4/eQAjz7XFgUpFS6Tnn4mISIxBFQxY2KbBBTvfHICIcYv+53ktwC93oL2kHdOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773829189; c=relaxed/simple;
	bh=peYYlGeFQ4ckMbHHg/GwMCWeV6nSwCsfqGBz75+vU/0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=V/HtvCt28EM2tQza91aA8hOUzkWPvR/VTFCRSUDh9JbhPIT0yjTHMsYkHMJbPkzIpM5UnuIv+mqmc80AphShL1RnDufSb0O+3flAVd8bsKXU4EHbySerOMF9N58tSyxb036GrU8LAwx3lT94CKAP/0mmaUUjAHlCtV784iFey3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AO6gVmxy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SHNHi7Us; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZHcJ2878115
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Uzd1Ys6gK3KlB5WJmOjBOF
	K2ANqk1x4Byag5XZ6TJgA=; b=AO6gVmxywwT0NUigme13qwAZlKUUc86ixJx3jl
	bwysEL++q7qxOgsC4e2viYizOLMlcx1uth/fd3w455juW/wTx3L8ipPtmaGliE7E
	GiKvLhuQA3OLVZpZt9qv6OGLOiLX7XRvELhKAe06O31DTgR00QpIwk0Id/lQt1ij
	RAbthL0+qA6X5BozReYz3QG6LCiVs165xJL5SnTKrlVXSbPW7pQpyRxGo0Qh9mHc
	RfYzrKDnEHFqXlQqaDw1kgOQF7IZboRMc+fPSL/1noIPmaYWmYlQaAg/jIfE1EcS
	4U/u7JYaHRLQWHS+bD8uaxQ4GZb/C7nZUZJzuuD8qArViU2g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr10kx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509011403a7so413012521cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773829185; x=1774433985; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Uzd1Ys6gK3KlB5WJmOjBOFK2ANqk1x4Byag5XZ6TJgA=;
        b=SHNHi7UsZjAlXbV1T3CkZ6VByTcbf8TUlzVxKtjSuFRlHUC1An4l4Ct3sYVrTWUeWN
         Vy7GaB08anO/jUUvpqYsfJ9c2AqauleY+I95oSJyExWwasev9JOILBDnuHYpSQbt7rWm
         WzkhKJojTtvie0t/IoiTS1bWjCNDNeO6qa+2lox00WX4QtIB7Vz+fCVNqy05dmcF0rGA
         N+f2Yvb644cfJHtiY4BDg8/xkCG/kaMuCGtsz1m4xlpfXHncrXtn7KTypxa1TbLOTHAK
         tlkp3EMAr/7L/cxFv878zDE82duiLJn9KCRXeM1bnCtqNQJwWpjTSb/zW1W31nVUenf9
         LBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773829185; x=1774433985;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uzd1Ys6gK3KlB5WJmOjBOFK2ANqk1x4Byag5XZ6TJgA=;
        b=ILpVW9hahZ6ZsPD1jXyZgIQA+w9oi0H9PbUIFA8w12KCtr1KCGJTM49sYTN1oNLP8a
         c4/lFXSTZiV8DsCnccjpcjLGRFAiCZmxuA4WnmMjLFqnE+E4gGvcYMc/wkdM9Gd2e03s
         Ug+DKKUeaobb2113w/xAqALF7RU0T/v9QQlbeo38uJSlbOo1S4jkvdnufvUekDfSJA2R
         dg+tAVHp2uCymbdfn4yKU/T5E4KoXOBbW7vuDYOOXwC5bjPHXscsOrhaKG1Eb7HIGSNU
         vEiEU3GEqoDJQHEmA4gkXB9aFNiiLLXPuxaIq9UBhAcl2ai8mmWW7IBPVSYquPmiWEhS
         5Yyg==
X-Forwarded-Encrypted: i=1; AJvYcCVzbC8VW/+i1MKw9DWj0VOfI0ZHAPZgRr/wvyjS75vBWeAMITnZy2AE+FWtogJFupL88PsQm6ktdwkd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/6DdU/KWOVD0vY+ZQUHy9yWhm5kS2ppR+hIDIFiWYsVY4s0Mq
	d1sRfJLWkW2MhauI+Uu83cVxSlQA0ufAWt/OiyIkdNOKgTxiRa/C9QSTFwW9Gm8xFjgcomYt3uc
	ijw3nmafgpky2sjhCA9jfGhMh5Hvj45TZu3moubLOVM38llMTjhrJbuknWQNCo6MH
X-Gm-Gg: ATEYQzy0BCZRMxFAsed8Unk+wasZB56QJSkk0OxvLF49/2cY1VYGhfmt45gwFPKgEpq
	dsDfBtU7klCeoj2O4RyNuUNYQhV7+q9XJaM2SP+lkW6d6J2kuQbhZ3oe5yy6sjpW3Es1czI0Ts0
	K9wUOuGQJwgY8Xv+0el+QEm9ifx9vv/vPCLQ4N+hlm6L/dkzDZjfmbhxvTMizs9lYGkp0bmcF6u
	YKKFmF4s/TQ6BLuzDzJEoE+AHNCazfcIbprMGgxuXpH3IM25hNawVf0Kv9wktgF6encAvrVN0+F
	BwAdWPii0XpBWPrh2+2GT/mns4y9iIqpHUQeuu9mccEs57s5raeXeRrCxY6k3NX83qjKyo9HSvC
	fdTM5UPqkg4f5Zvmc2ZMtRZHwsIQ=
X-Received: by 2002:a05:622a:87:b0:509:1dc8:e9e6 with SMTP id d75a77b69052e-50b147a5572mr34105641cf.29.1773829184627;
        Wed, 18 Mar 2026 03:19:44 -0700 (PDT)
X-Received: by 2002:a05:622a:87:b0:509:1dc8:e9e6 with SMTP id d75a77b69052e-50b147a5572mr34105311cf.29.1773829184073;
        Wed, 18 Mar 2026 03:19:44 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaffbbdsm129945625e9.15.2026.03.18.03.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 03:19:43 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 0/3] arm64: dts: qcom: Add base support for Eliza SoC
 and its MTP board
Date: Wed, 18 Mar 2026 12:19:31 +0200
Message-Id: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADN8umkC/22Qy27DIBBFf8ViXSJgMBiv8h9VF5hHQhXsxNhW2
 8j/XmynaZVmgzQS59w7c0XJ9cElVBdX1LsppNC1eYCXApmjbg8OB5tnxAgThFGF3Sl8adzo5LA
 dsGKKaMW9BVWizJx758PH6nt92+Y0Nu/ODIvk9qN3lzEHDdu335y62FIY+0kJrQ3tIWHdR5xiH
 DGRBigHb4Qv64mivzXvOH3Ek4lYepCyMdpLDvXEnpFA/5PnGHBluWqoFtSSjMKCrvubLsYw1EX
 lSs1l1QgrNFq2PoY0dP3netRcclnyVo0/3G+imOCSu8qBLr3jsO9S2l1GfVrku/yswtz3LgEKj
 xKWJY1VFIS0lSD2iWSe529ZekLq7AEAAA==
X-Change-ID: 20260219-eliza-base-dt-9290a94fd395
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=3194;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=peYYlGeFQ4ckMbHHg/GwMCWeV6nSwCsfqGBz75+vU/0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpunw5Zx6xVX9HP02RVaimz97ju7lTp1vna7eDc
 TKluTYxkYaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabp8OQAKCRAbX0TJAJUV
 Vq+kD/0QQsgQzQtUA/NoFVVtNzAyz92JTC1l+BqtH1eu7NxR2OqxMqdovrtlFHRr9jf8d3fK9qV
 5kb5lHX7BGH3YgtiiEeFXB0+W9tKsPCUJHGuqzEnDqXxIho7HI1kCIs+YT5Y5ZrCZRWPPQc50yh
 3bcHxA7mQ/R4k/EVYwotLdRtVVzNkJtXKwd7zrqXoh/HXixqyPh2T0EFEUFFo8zPQMiZV6Nrty6
 NAm76iPZRMxqCX0H4TTUux9oH9wD92yNR6EFro5wM4RS2cgQLvylsDmUY4kZl6vogRcVPDyqGwh
 hSwvmS83ftPzj5BGGUTLjtFDtGFHOyOgKy4dvwIE7Q5qE1HDUMMF+IL7zCKmEwZIR3zlChsJjoh
 wDlZXf7NBQD3wwd0ifdorBbThvMYKlySbggMWqD0tbVFxCgehGlSIrm6jYtSA5DtlIqzKR+6y7d
 OFbcyOKQWInCK+AO8Rl210H+qtH+Js/Ml3F1VIUsOTEzs6/+jkBqU9OMx5UVu30pW4zzR6bt4ML
 dqkZZNVuX71KGvjWqyuEoBOKdr3CnmYUuVYZ9e0c4FVVZwBGMtQ0TwDh7T6weo8jzYEU+G0tlE5
 wrsDThBfJMHnu8TaonfkwJT1NmqUOSnxMB/OnojrTYK0u7gfGp+iQS4CSn2ODneBsbQsI4uMuIP
 9jk2kqByHVtSGYA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba7c41 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=CnW29Pfj3VQRh9aCjlkA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: uEILUdmynxqTHiAsjtC_Da-ouZZ1x-8U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4NiBTYWx0ZWRfXz3WchTu3p62U
 BzsfmtVgTzRuaxqrbaEaRw4tOLwZcAhLyzeGfLWaYejccbhv8SKruF3K3Xrhd9bd9/BpY1Tjpqu
 COUr8orWzzsH2rvz+P2CpINOhsg4DoAERtMybrfflvJ/LhUc6hojTFGqWWkTAlWcHElC1PCA7Vx
 13qXUSCCj5JhABKefoQO1ibYQ7ycACxGUXbikbJa51m2/f2Y98CCabRqjcm1dzFXwvgXYwXGkht
 r75Ujo2POvlx7iOJd1IDSFxQ4yqB08lQMzsp2etXY+soNc037eJ20zqFnp260XGJY6VFapgO/+o
 jw5p60XGwb0tdcWcldbk+K5xqzp60enLLHOQ+CykLMdHbhZ/lduRRnuJoppbYC10LaLVloPd8md
 fl13+YvBrbGelcJBrBTvEzw71FiCGh6EET7cmCjM/cuV/ScLJSsH5iscOyrpdCz8m4uiOT5uO5m
 DqMMkGGQqZXeUB/HkCA==
X-Proofpoint-GUID: uEILUdmynxqTHiAsjtC_Da-ouZZ1x-8U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180086
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277104-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4B80B2B9C7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm Eliza SoC comes in different flavors.

Full spec sheet for the mobile flavor is here:
https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/Snapdragon-7-Gen-4-Mobile-Platform-Product-Brief.pdf

and for the IoT flavor is here:
https://docs.qualcomm.com/doc/87-93954-1/87-93954-1_REV_A_Qualcomm_Dragonwing_Q-7790_Processor_Product_Brief.pdf

The initial support is basic boot-to-shell with UFS and
debug UART, while describing cpu cores and clusters, with
cpufreq and cpuidle support, and all necessary basic resources
providers. More support will follow.

It includes support for the MTP board.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v3:
- After some back and forth, the conclusion is to add the voltage range
  for the LDO12B (used by UFS device) and a comment to specify that this
  works only for UFS 3.x and above.
- Picked up Krzysztof's R-b tag for the bindings patch.
- Link to v2: https://patch.msgid.link/20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com

Changes in v2:
- Rebased on next-20260312.
- Dropped the dependencies patchsets that have been already merged.
- Re-worded all commits dropping clames that claims that could
  confuse folks about Eliza being a mobile SoC only.
- Moved the L3 cache node under L2, as suggested by Konrad.
- Flatten the cpu map as a single logical cluster, as suggested by
  Konrad.
- Fixed the phandle address for the qcom,dload-mode.
- Made the QUPv3 enabled by default in the dtsi.
- Added MCQ reg range to the UFSHC.
- Fixed the UFS opp table according to Konrad's suggestions.
- Fixed PDC reg range size.
- Switched the SPMI to multi-master approach.
- Fixed the size of the GIC ITS reg range.
- Dropped extra blank line from under the nsp_noc.
- Added comments for the GPIO reserved ranges, as suggested by Konrad.
- Added empty line under the uart14 compatible property, as Konrad
  suggested.
- Picked up Dmitry's R-b tag for the dtsi patch.
- Link to v1: https://patch.msgid.link/20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com

---
Abel Vesa (3):
      dt-bindings: arm: qcom: Document Eliza SoC and its MTP board
      arm64: dts: qcom: Introduce Eliza Soc base dtsi
      arm64: dts: qcom: eliza: Enable Eliza MTP board support

 Documentation/devicetree/bindings/arm/qcom.yaml |    5 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/eliza-mtp.dts          |  407 +++++++
 arch/arm64/boot/dts/qcom/eliza.dtsi             | 1317 +++++++++++++++++++++++
 4 files changed, 1730 insertions(+)
---
base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
change-id: 20260219-eliza-base-dt-9290a94fd395
prerequisite-change-id: 20260222-eliza-bindings-arm-smmu-07c3143fc6f5:v1
prerequisite-patch-id: 8c34f07d3453ec6329616ff14cea4cda79a7243c
prerequisite-change-id: 20260221-eliza-bindings-scm-7f377bcaf743:v2
prerequisite-patch-id: 568045701b63cc9875ed6efa488097d62466d995
prerequisite-change-id: 20260311-eliza-bindings-spmi-8d49b1a61d03:v3
prerequisite-patch-id: b09cc32d2059fd50bf18564de109f89211bfce2f

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


