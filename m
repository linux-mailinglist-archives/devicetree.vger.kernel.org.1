Return-Path: <devicetree+bounces-321403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QpDKC4zgS2qdbwEAu9opvQ
	(envelope-from <devicetree+bounces-321403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:06:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA08713AB0
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:06:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=FeXA6KSF;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="KmbT/Vnb";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321403-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321403-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6090308D646
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 16:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48601436BD0;
	Mon,  6 Jul 2026 16:57:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D67435AA0
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 16:57:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783357030; cv=none; b=G08OR//hkAbbqZdHd1ao53ptEhpEYFyNrThOBfnlCXgq1LbFCVGDWfXa+MsBS9U7OtYJFUUNzXxcifxj6nrCWUItpw0mpnyuSzuGcf2Y1rAwEpoaBgSnIn4Mj88dIbTVqZcYghI0ozZC2FBMzCe/aEoLDAjLq3rU67jzB0SPvhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783357030; c=relaxed/simple;
	bh=p/ZYI2oyj2fs74BmC7SPx8h3Tno06dXdJ6gC53S2YGw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lu9RCA02Io9gba/V1mM9JoBKV4fV/gauR4OG/OtMTARSr5c4AF6YKgIfm2Jb0KKRjBdeqKbGaO4YWuWK8sBQdnzWzvSOljvXQll1enineUsNOJrL0qTc3Brpk8zHDgAFhknAAs0VYdCKXkuOWpG6XFoiRJ7psInaWW6o++hBgcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FeXA6KSF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KmbT/Vnb; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666FFCRa900947
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 16:57:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jaba91hSwH71CM66VVDdMF22IKaDQ+KdMje88NtsjZI=; b=FeXA6KSFxxCKlWPN
	zfB4pOD36X4FMU81gH9U7n2TsmhEv11aZ8Of/mtdTTHjcIjKXYgG/kKieTmxPJWi
	9s+yOFk9B8a73ftMjX+rNbDmmjK/62OrWuFZg1gF8zmgxv6qcIraW062mcnyL2nV
	XoGSgYfIJhfDdqlh8w/k+LF7IQOKkIpsHbTw9eQdy10fR/badamJnFFPaJKhdCn2
	1QjAomJdNYKFtLF+xKnh5ZY5FuvUxOsGXgLO8HA5u4+COwDMs9qWmkp+l5temi2i
	NTptCNejQfMwlK7JKFJgFA5vS11aWPc1vM51rHSuQ4NBNauHTaYeBJbgCg8CT2yK
	4AB4WQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f87q7jkcx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 16:57:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-847a225cd91so3216601b3a.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 09:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783357024; x=1783961824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jaba91hSwH71CM66VVDdMF22IKaDQ+KdMje88NtsjZI=;
        b=KmbT/VnbiQqD+xE/vwVwrI1U6Cx8GX1odzSoN6XYD/m+GeY0tpGyAjS5RID6QKkVw1
         +V2lslcL++MlmlkNdNIUfRqDG8Zw77x2UqeaDGI1g2VD4YiE1LArmx9Hi657Z+tkvJ4r
         Exh8SXFClTXTN8FTsJQ4MsLUGzuvuAQET5FSni0Dvah2zPx44b3Tba6/x7xJ06yXB2fO
         B81P7TCKFtkfmaiNAMs2dF3uPk0v1a5IMPyNGZ6t0q4vHlG86Sd2YMk2Gxr2ceNpBxGR
         NUX94eCta044fHrgBX0j6dx8PkTjrNm+vGaDmnPhjduxU0RD728BzRI1dW/Q8LblJE/B
         B5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783357024; x=1783961824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jaba91hSwH71CM66VVDdMF22IKaDQ+KdMje88NtsjZI=;
        b=qonki7JOE478aqPqS4jdzPXLqBMQHBCNC8pcQzTgYhVZ6I3mjmdEgZtLQJbn20E+fv
         SoknAAny6c/NCUZCLfzgEVTgQLK19toRQ4gAjhlkszBLqKLxunzxItLcjjNlr0V7ssXp
         1+Un82kHF1N60ArJ96iBo1ewRKedbHYW4+Dw2dbBfi3Bn+waz/BHBp3PTR3rwvjlGowX
         dOX62F5ILbBahIuPt6ojJiSjz3/5jq9mcMJJGtlyO23BJ+AE6EM6IdkcZRA9w+ILZCX+
         O4pMnOHLY6hekxfeBX+QRsrslFOXnrXnWhZ6KNXawLYRGgTay5al0inqKqeH8JoB8hwP
         8wPw==
X-Forwarded-Encrypted: i=1; AHgh+Rr/HXkkC21FijTtYi8qBAUabpobRSb5cZxtBVcjJfQLThcD+ak0x8MfjCNnQm1GgjffwIyydGZywf9q@vger.kernel.org
X-Gm-Message-State: AOJu0YwKakUAl/hRWzbOQzb0PnSA2LB/2Hh86fyG1/J429b5ZpJWAZ+E
	lJbX7rbZAVbwIo91mY3mCYeMOnGOHhSX5cyonOz1MA3CHq1WN3KF28Yh6yro/5u9bSV8IzbcvLJ
	3WrTxAhTUXcoOM1xpVdZbih+8mEGjpcuL+6NFz/gXAtneTzU0fNGoTBGNZlTyxGOuM5AvazVH
X-Gm-Gg: AfdE7cl1LWS12Tn0gF17v350U0ZTIpK00CO/zYQOngK8ITpxuB18TwDGjGhw4G5ppcL
	Wf/RhnahwiUpGpA3PB0AWPAx4mKfnBXkkeWHnIvj2c++lQuIPSv31nO540uVgKY2TJI7w7EAnVx
	DgQW33n7swhg40jFsQqpyQBq8aJiNh9YO2waqNx9fbrmMQB/N8uyMrgkkm5lNu5YfSBmW9OOvwp
	g67tjnN4Y4aYuec0kd2+GxdtZk/NCu9Rl3/34/rZvnZOv7eG3cUeTi9u18cc66x6KCrU4ZhzTsr
	hKxFph7im+g9rC+dflmO8UWQScJOcACFmi94/LyfQb1x7qvy7GS7ut8+4T1Yz84fn8f5biQji4m
	Qi1yLOnl8JelZExstO7QKxzOAqQgBAQJOw5OIWurBqQ==
X-Received: by 2002:a05:6a20:c786:b0:3bf:7bf7:7903 with SMTP id adf61e73a8af0-3c08ecc4d61mr1761475637.15.1783357023702;
        Mon, 06 Jul 2026 09:57:03 -0700 (PDT)
X-Received: by 2002:a05:6a20:c786:b0:3bf:7bf7:7903 with SMTP id adf61e73a8af0-3c08ecc4d61mr1761441637.15.1783357023259;
        Mon, 06 Jul 2026 09:57:03 -0700 (PDT)
Received: from hu-bibekkum-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c9e8eb0efc8sm6960604a12.5.2026.07.06.09.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 09:57:02 -0700 (PDT)
From: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 22:26:36 +0530
Subject: [PATCH v3 3/6] arm64: dts: qcom: kodiak: Add GEM_NOC interconnect
 for adreno SMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-smmu_interconnect_addition-v3-3-afdca0125a65@oss.qualcomm.com>
References: <20260706-smmu_interconnect_addition-v3-0-afdca0125a65@oss.qualcomm.com>
In-Reply-To: <20260706-smmu_interconnect_addition-v3-0-afdca0125a65@oss.qualcomm.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783357002; l=998;
 i=bibek.patro@oss.qualcomm.com; s=20260617; h=from:subject:message-id;
 bh=p/ZYI2oyj2fs74BmC7SPx8h3Tno06dXdJ6gC53S2YGw=;
 b=In/dpfQ0xnfFS+WOyQM3+imZpa80Tr/uA6h882KzG/ER312er3VHUUqUAf3DCUI2XXwGHJYct
 kmZUcNUIAtVDcoKEsJ1BEuLuR8xQBkY1E84nx6fVeqE5mDpvMzLTqj8
X-Developer-Key: i=bibek.patro@oss.qualcomm.com; a=ed25519;
 pk=DkrbE5dhskZJmBAKR5LygWRsAydEOSN+T0/YxNYxDLM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE3MCBTYWx0ZWRfX1AsaNdCt3ikJ
 WjAJwax6Dbu8mk0gmU6G/tvTRn5DCvU1HBU/ySlueG7LSWS1HSQYk1IiOg/8L/NkYO4cenM7AN8
 CdrcAczhNU5fQMyHv955mcCHFgahRysErzNvIPCJ9f/2tshr7F8gO5Ve0UcEpYNgH3tsQp/ZWxP
 qrXBVS4mfK39xTdiwSEjjr3NgflcVQ9nQtxnZC2b4HPSNSczOqK6NPb/jv4rbeh+s+0vsdNi+3d
 3IQdWSQF9fJfa/eb3t6U5OhjwDWMoxzE+tHHsYjir94GW1QSiwKlfutdbiWutvTalwP0M0UKq2C
 BE5lSxuP+zFne2z/bcjI9YhhWijYpzdW1asHEsOC2tIRWpcH7xToSbxkunbWuafAx7Yc91URa8V
 A7mESRY8DYWC/RcvNciMqphqqPJAEvRb/YJaZ+9zJXNaOryYh8mti6yztBBMyGxa2gxx8RC6lLJ
 85AmhhGbsVVzeSvg7qg==
X-Proofpoint-ORIG-GUID: HRdrYMNwMLwsyL0UijZe4Wm3yc-FlARM
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE3MCBTYWx0ZWRfX4jm6YdScrnEK
 W5BWAaxUdCnKxR/23LP2a8PExYG6ENjK/HSQ+N+L2scKrIxEatrzwUjOGnwXZOM5Qo+FGO1xirf
 kvLw8zujMWqZKCIxL1gqHpnRWccRx2c=
X-Proofpoint-GUID: HRdrYMNwMLwsyL0UijZe4Wm3yc-FlARM
X-Authority-Analysis: v=2.4 cv=f9N4wuyM c=1 sm=1 tr=0 ts=6a4bde60 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=_R9ktDxRehPmGBbURfwA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060170
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321403-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[bibek.patro@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:bibek.patro@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bibek.patro@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DA08713AB0

On Kodiak platforms, the Adreno SMMU requires a bandwidth vote on
the GEM_NOC path (MASTER_GPU_TCU -> SLAVE_EBI1) before its registers
are accessible. Without this vote, the SMMU may become unreachable,
leading to intermittent probe failures and runtime issues.

Add the required interconnect to ensure reliable register access.

Signed-off-by: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 90e50c245c0c..721526f023dd 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -3389,6 +3389,8 @@ adreno_smmu: iommu@3da0000 {
 
 			power-domains = <&gpucc GPU_CC_CX_GDSC>;
 			dma-coherent;
+			interconnects = <&gem_noc MASTER_GPU_TCU QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 		};
 
 		gfx_0_tbu: tbu@3dd9000 {

-- 
2.34.1


