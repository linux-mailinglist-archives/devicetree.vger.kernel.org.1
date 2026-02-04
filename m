Return-Path: <devicetree+bounces-262450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HR0IG+egmlgWwMAu9opvQ
	(envelope-from <devicetree+bounces-262450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:18:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC65BE0644
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D28730E5B50
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00606254841;
	Wed,  4 Feb 2026 01:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ENsp5obo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hMfTnY5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8732459DC
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770167684; cv=none; b=WeCPuqBM+4kfStR98oiNurLRxZZbQgnPnOoUCOb7vLKI+AY/oy0AVcUN5fBdx6r5+ZjykljAQsldbCUstau9ufV33IwHLq8DVuczH5Wph0evA9YDUjy+AFeVZ62aoUDyxAZ7S89MpbmamOGbHKxFufswtkrugS+80xUFe1t0rdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770167684; c=relaxed/simple;
	bh=+UlTR6hv8631B4iaBWsV8zynbZQfewPDNzChE8C9ErU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OtdXZuE77YKazPhrgf6IyggY6xU87YMIsL/GPb9XbuvsKzoqjX4wgoX6DnhvthKA9eH9or6WQ4XctbOGH6IUOtSces5TSjWfdNK0gjZnrbxrO2U3jSwQZjOQ7+dqRWj8fBAS0332lu2df5UO2bpamNd5yC1IWnaKUIQutzHd+0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ENsp5obo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hMfTnY5B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613LK0dS3515394
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HtHKENTQprTKmRT3YmuFw0K2tJb/ZLOHx9It1bp0h4M=; b=ENsp5oboTd5i+DJB
	MOmEwyHgB4+WnVjvSsA2DuTgK+vWRg8WohGL5KsPUn5uNlmrMesn4fEZ1id8C8Vz
	ghDF7RTnEqiQYe6bM+f8hOPxTeZSMGVeqoj8DtW53HWzx997jIrI6JN99V7DfjWX
	AGK+5emOZw2J0yNtb0/OMBMcYrf9At8c8VwPKqsFsrMuWjhSsd2H6+Ugah4WI0hX
	eGLZ1dxNHV9Ixalcf0j/1wrwcdQxfOoC0yMBtnbV3/zWAvmcrAwpXeJYTXEIVGgU
	FIyIYrHUoOe6Ihd+wZ3YzpFuIrLfOQoowyleyeg4nMH2cVcmkQmETPfxlKuSFVrR
	87BzMw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ru98ky9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:14:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-503342386c7so206419091cf.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770167681; x=1770772481; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HtHKENTQprTKmRT3YmuFw0K2tJb/ZLOHx9It1bp0h4M=;
        b=hMfTnY5BXWAnpuDOhf3UxA/6M7ZciTB5srMDymk50sSMcG6+l0HKHcuLXP2V0zhQE/
         ikxcL/PGCj/HtCo8svLpSkrrPHnH6yxoN7HpgdardQOShyijxDDiE3VwF9bJBdnm0J5X
         KbUrNzayFRxDyFgkLeTbARMx+kcVCgZCf/w3d1E8b8z/pHc6+tf9mg3fCXW15PHD8SXP
         a9W4vxacJOeBCeT3XlPWzsibPKBP2rpT8cKM2dXBcK9eKdhLXB/8M0zDGNnQidtBmJa5
         RoOl5B8BQsGag/Gxa1XxqM6UvRqZBN/5AuWVKrls38df6ZxUnHNNAuCnJ9/QSz/8Dqm7
         wmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770167681; x=1770772481;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HtHKENTQprTKmRT3YmuFw0K2tJb/ZLOHx9It1bp0h4M=;
        b=u93bXfr+A1eTE2opMD8WPxkEvDjAjKz91X4i6QL7cpgjvMO4KS4m4U3eQeBuTNEGZ6
         angoSAnm/zh/a09zd2qUIflG6Rg/vWitAySenFDjCZJkEMVs5NXydzLS6jK9ut4n82kC
         omkAQm1LjW+Ml9OhQqK80HQEMqqTBz8B3+kaEtA/ne2LSCJ4K8lR2/5rMWUThXwiw5W7
         1P5cAuMVwIHJYeI1U6U9hUKahL3Gf+LUj2RWQv1NxwH1Ex3NgyOdx1xdOMYYwwQJgGcs
         Y/xbynjCKF9oqzfQflEzf2FFUhn7nOO+A2iJTn/tKFaU+Bt+Fp76loAiB0i4/lD4yQ7R
         483A==
X-Forwarded-Encrypted: i=1; AJvYcCUc05HWfPpC7/DtkGiKNYclDu7ExOxCrbtcZuJb4apNIyoWBfvuDgdrNhCa0PX9hRNDs/vPUQdVNRDC@vger.kernel.org
X-Gm-Message-State: AOJu0YzBlMeF3O+hvWijDYb7XZ73da9o/wPJ+dLAaWdlHkEEqBP/oROR
	e+wfEbbpYVzTa5oRTuQT9CKzkEPRzONBytkaQdpcgeBmu7KUKbnLY9spz459sdyN7MSlaDcop3q
	IJq6Cmn00FGvqXup718s4dkNqjWnGlcmkrKtiF4xaVDLMkbC+j3ZHPR1U4PzqRSo2
X-Gm-Gg: AZuq6aKCVNM+bIlifxB6ViBvizI0R28c5vh7Ofnfs07ALiXG4lW4M8VYGjdKG7iNfLt
	NM8QjNv0Pxr7tAr3E0dvDzqdUom26Su+xNKrAQDNzGo4y4HLtdbrM61dcWalCL6D2uvmFsd/qfw
	jLftYF6kK6Kpb+il5rhJh8EjqQxmT07utoOHIcuQrVp0KaysjF6wBFrvqjhoHrqgSJIo2m0M2Ro
	3QdtukN8N/8V5ITfodo4jYPTYZgLMzxNUSkcxpVfmPutVWRixwq+pZvgaX7g1UO+roP340WBoFK
	MHA8O/LXboXVj08rYfeAL3/YZkfPfpAQuzg95h1RZXyCoU5RM/1BGDI6wmoMDHtBh0jqvANpSrR
	deK3xCWlIY7Xqy9lEen3rOgwz+krYzPT4UNPKACeO43Gm5EuQyLIbDL27IvuJOcjWGx56chtNfq
	y25xdpxA55AK1rsCZXcAj2l1s=
X-Received: by 2002:a05:620a:4807:b0:8c6:abc5:f15e with SMTP id af79cd13be357-8ca2fa32305mr200284585a.67.1770167681389;
        Tue, 03 Feb 2026 17:14:41 -0800 (PST)
X-Received: by 2002:a05:620a:4807:b0:8c6:abc5:f15e with SMTP id af79cd13be357-8ca2fa32305mr200282785a.67.1770167680948;
        Tue, 03 Feb 2026 17:14:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e386ff420sm263232e87.2.2026.02.03.17.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 17:14:39 -0800 (PST)
Date: Wed, 4 Feb 2026 03:14:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v6 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
Message-ID: <4rmjpmwglz4rtmctrzryehhwn7t7g2xuljau7srzokywilrcua@muockktxclqu>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <20260122-upstream_v3_glymur_introduction-v6-3-245f408ed82a@oss.qualcomm.com>
 <2vqho236mjlsnraqif6ivic6ybblnsmk4litqw2sbfpjvrp2t2@eztnjrlsmrp6>
 <64x5xfzjik4qtvsxqvwqhf5mua3rpvh7nzw67v5sy7afoo5fzv@5vp3uvjk66if>
 <b2696068-2e0d-4197-9aff-606fd9d72b7a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b2696068-2e0d-4197-9aff-606fd9d72b7a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwNiBTYWx0ZWRfX7Y+yQmQU6JI4
 TI1w5iEb2C/Uxf+Gv6s35hLrUC30FWdeLpDYi+cwHJMzGmMHi61bGIXV2jo1K5/yWKZVpP60DQ9
 sGhyt/X+tBTK5CZKqY/gNa/3Y76HoyIfKQ8LIzuSSETm7kZC+ktybzKwA8Gkx/RhM87EWQ/bdOZ
 iyvrWF1eZP8qPXpiL0q0zUvsU8GupRdh9t3mGO+iVXdH3SWuBQ2MIn8tyRBXYD4dcT+S+p/0ORe
 zX6HDT7Z/oauC65lqQ7yEs5zh4u53Qq+d6Z7+2GBvLBwJHSfE1S+WXCS9ZQ2GZ03OjMU8lO5RQp
 ZgERQ3dbq0S/swXhN4oFzK/q+W0mQjFGLyGI8nbM4V+czA4BKy3Gm/FqtBhGqlacWdxFr2dDkDe
 43rSAigoPGfDAmX/78XGusQx4csSSKW4J43rTgmbOs7get4w5FWWh6tw2lYPJEe73GviyYOs06+
 tYH4F3ysXMzA7uJBcIg==
X-Authority-Analysis: v=2.4 cv=IJoPywvG c=1 sm=1 tr=0 ts=69829d82 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=ZvQMFzxqNfvNeM4-o2QA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: pCxIqbs42RjugrGLcfnevSEwelLKpRDP
X-Proofpoint-ORIG-GUID: pCxIqbs42RjugrGLcfnevSEwelLKpRDP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040006
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262450-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,0.1.134.160:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,0.0.0.0:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DC65BE0644
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 10:08:35AM +0530, Pankaj Patil wrote:
> On 1/31/2026 3:30 AM, Abel Vesa wrote:
> > On 26-01-30 23:44:43, Abel Vesa wrote:
> >> On 26-01-22 20:54:00, Pankaj Patil wrote:
> >>> Introduce the base device tree support for Glymur – Qualcomm's
> >>> next-generation compute SoC. The new glymur.dtsi describes the core SoC
> >>> components, including:
> >>>
> >>> - CPUs and CPU topology
> >>> - Interrupt controller and TLMM
> >>> - GCC,DISPCC and RPMHCC clock controllers
> >>> - Reserved memory and interconnects
> >>> - APPS and PCIe SMMU and firmware SCM
> >>> - Watchdog, RPMHPD, APPS RSC and SRAM
> >>> - PSCI and PMU nodes
> >>> - QUPv3 serial engines
> >>> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> >>> - PDP0 mailbox, IPCC and AOSS
> >>> - Display clock controller
> >>> - SPMI PMIC arbiter with SPMI0/1/2 buses
> >>> - SMP2P nodes
> >>> - TSENS and thermal zones (8 instances, 92 sensors)
> >>>
> >>> Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
> >>> PMH0110, PMIC's along with temp-alarm and GPIO nodes needed on Glymur
> >>>
> >>> Enabled PCIe controllers and associated PHY to support boot to
> >>> shell with nvme storage,
> >>> List of PCIe instances enabled:
> >>>
> >>> - PCIe3b
> >>> - PCIe4
> >>> - PCIe5
> >>> - PCIe6
> >>>
> >>> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> >>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> >>> Co-developed-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> >>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> >>> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> >>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> >>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >>> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> >>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >>> Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> >>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> >>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/glymur.dtsi         | 5913 ++++++++++++++++++++++++++
> >>>  arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |  187 +
> >>>  arch/arm64/boot/dts/qcom/pmh0101.dtsi        |   68 +
> >>>  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |  144 +
> >>>  arch/arm64/boot/dts/qcom/pmh0110-glymur.dtsi |  144 +
> >>>  arch/arm64/boot/dts/qcom/pmk8850.dtsi        |   70 +
> >>>  arch/arm64/boot/dts/qcom/smb2370.dtsi        |   45 +
> >>>  7 files changed, 6571 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> >>> new file mode 100644
> >>> index 000000000000..16a3c3ecf97a
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> >>
> >> [...]
> >>
> >>> +
> >>> +	soc: soc@0 {
> >>> +		compatible = "simple-bus";
> >>> +		#address-cells = <2>;
> >>> +		#size-cells = <2>;
> >>> +		ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
> >>> +		dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
> >>> +
> >>> +		gcc: clock-controller@100000 {
> >>> +			compatible = "qcom,glymur-gcc";
> >>> +			reg = <0x0 0x00100000 0x0 0x1f9000>;
> >>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> >>> +				 <&rpmhcc RPMH_CXO_CLK_A>,
> >>> +				 <&sleep_clk>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <0>,
> >>> +				 <&pcie3b_phy>,
> >>> +				 <&pcie4_phy>,
> >>> +				 <&pcie5_phy>,
> >>> +				 <&pcie6_phy>,
> >>
> >> I'm afraid these do not match the array from the driver.
> >> I think there is one more <0> before the pcie3b.
> > 
> > Actually, one less.
> > 
> >>
> >> Please double check.
> 
> 1 clock was removed in v4 to fix the no of clocks, 44 was incorrect
> I will update it to match the array from the driver

Please add at least several comments, helping out to match zeroes to the
actual clocks when we add them.

> 
> >>
> >> Thanks,
> >> Abel

-- 
With best wishes
Dmitry

