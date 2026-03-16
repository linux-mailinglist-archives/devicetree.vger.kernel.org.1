Return-Path: <devicetree+bounces-276374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFHvIURduGnXcgEAu9opvQ
	(envelope-from <devicetree+bounces-276374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:43:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BAB29FDFD
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C62D83023A46
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82113ED136;
	Mon, 16 Mar 2026 19:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TZMBzrho";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jadgepID"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2613ED112
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773690176; cv=none; b=Osdu++9XO8q665YAoKtTkNtWt4whIditY2h36pEiz46jeucqp2Qh3DqeAeAJaJAgBo2ZO38DyPuF7w357V1K63nQq8zAHxg6JJxtSEJNWpAsBP+2dM1bVrnXY2K8b+E+Qyepo8a8/cdb9LPILYGAz6pWOXdo61fzrMfcNXgPxE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773690176; c=relaxed/simple;
	bh=8pKSoyetPXKpNKLPG0IjYbFaZYicC2/GSi26W65ckfg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AKJz+kcNja1pXUYqxN1GiHjJvq9LQ9CmpZ/fsPJ6z4NhF0mE3keohNdSHUdUfPJMMApzw5/YUn9nXvjLSJYADeeufH/7rp8FMU6Cx2BlKN8AWol7SF6qFVFkHNf4bz36QiL6d+51mxq5jwR5cGaGmIlgDxD+/jZy+o+PhI3H5h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TZMBzrho; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jadgepID; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GFMpYt2314566
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:42:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+cnQIkFDXwporw30NasLf4kS
	q8rzFR+Uzt/PemH3SE8=; b=TZMBzrho1ZI9j3MecyDJMrQhyfYnbp7F+HbgPg7R
	mqfG+xh/rvJqlW2mwKsCyVLwfzrC53QO8yBljjCYZZZjYabFv0bm9U5n4/bMcabq
	YF91ns+etwVEXWpgUnVfpVioCHWVnw7Cx0EpIQWBBbaQQV+X0Z4FCLk/ECUB2gu9
	IFz9s4XLYnswCOPX/A5G3JbjNPfwmH51uRI3xjMeiVaFLgWnjFPeSppW8kGt/5db
	2TR/0eQePYHL75VvPioyDrfUy4lTd5GC02JHxagrRGm3bXDSnk3HmHyicFSh+ZvW
	B756UKaOFmyJet8cUhVlEyPQtuuFGVvOCTwZLpwxvLTArw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxmf28vd5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:42:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7d4cc049so5402312285a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773690174; x=1774294974; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+cnQIkFDXwporw30NasLf4kSq8rzFR+Uzt/PemH3SE8=;
        b=jadgepIDAZ17KapALilKQc8TAxfR06ksj5lAjiNHEWhcLOEcvU/U0qyYcQ7ynwFYtg
         WrVvNoFK45vfS5qz5E5RH8yHubHGi1ZW7iB3eoldZ0pG6n4F9219pIcC92tRdnBPbHt6
         m1wWmAGf3aeslyduvF+s4WvA+qHkyIsc7NBIxNWccB98knw/pB8ZpABjwKQhji9hdHNo
         nYrJD6cuLsQFhY+7Bg7JBLm7MWHGCz5zpkUEhJF5deN6jKUHk1SSI77x67D5GIENXfgo
         hUDYY9ref5qSXxcTmBr9+Lh5yyuS3hOcVY/4ldQI1F58zf8fOkLG1YhFPKhfCU0tSAu9
         IhBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773690174; x=1774294974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cnQIkFDXwporw30NasLf4kSq8rzFR+Uzt/PemH3SE8=;
        b=ASTRplR/ax8VkDJtVHsEzy0WlvxtKQVMc9uUzctFonWwxOFbVLd15anx5jD40uDanQ
         68AgmJoQCzfAL/kr/M1vbIC9Zj4cfJXwU4whLPF2eGra+Q4c6xQmaQyn+ejPyaPtKZk5
         3se0or2fv/yddfcqElrcb1RgJCgt+TZgptvtOezmqag3AdTcbxv8MlnpOTE2lMz19q17
         0aQaWAagDTeu/fewTAlurMaSvEmfJSfT8oWs7Gt227oMILC2wXm9HCckv/21Ct3vx7eQ
         /1JP40hpFRt7dumTPuKDGAc8JZuDkC0lEoGmh93gkfuDhryMj+0qVGf3i4JXBsGlyEx9
         jhIw==
X-Forwarded-Encrypted: i=1; AJvYcCUsb9JoCcPcjt+Xhk7uJ2aBdoE7gb9GR70kr09p+wan8vNFdfoV43wWDiJQJfthlAOT0/jLlfU8eDq+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0l3yodHkaMR0Mwo4ymP8T5hcjghs9No7FvgjdDghBJyyehMwx
	8rrQDUJOk2xFox3zNGjleG6wRWjH1Vs4WPSsNeGln8KrIl5E7tVrB9Y7aXZNCO4wyFfyDtEm5Z9
	w57cPwBtquRSV84/fCV+4c9oG2NyGDx7YfAIQRXijoEjh+zYKBeJQWW7z7YODHMHy
X-Gm-Gg: ATEYQzy63FLht+kJ5koYdzUMi8g5NZqPDlnCtPlEoKSLAEO+dhOdmwdimxWbpW/cKsw
	yvhn2H6HPEsMiLOLWtCE5mXgFTxDUbXaeRsRMrD/YfNcXlJEDSM/R1WA6qKN5hgRIlbuXW0MzGC
	ymQQyDrEw/d4kQ1O8Nob6/yDt1Xge8lY2llZ6+YYfBc54hQoNq1Xe4Rt15SM2Kdoj0wFahsWqCW
	CvQBffHpQIiTZulPTztC12eV6pRjhCdY5Z7lRVRwpwmrRRYedktgZ3H2EF9tqzMbxoNtVfEpxTG
	1aA5vUEUOoF3J+P8JgAccA/+a5SttTApcYf5t9YHq87eDuFU6gMsu7/rO4Fqafp5eMeS0lqICL5
	4tY7pNagWX2Pp5anW3RXtEj9E/ZBmXPHfKziiNIw39brFHaf0Nv7CS21hbHEg9EJDPvSiUx6I3Q
	hx0YaaI+ArOnWkUa5+9AhhrYf7OM3+oC3yaYs=
X-Received: by 2002:a05:620a:28cc:b0:8cb:72b2:2a14 with SMTP id af79cd13be357-8cdb5a4b8f1mr1825087985a.16.1773690173107;
        Mon, 16 Mar 2026 12:42:53 -0700 (PDT)
X-Received: by 2002:a05:620a:28cc:b0:8cb:72b2:2a14 with SMTP id af79cd13be357-8cdb5a4b8f1mr1825082085a.16.1773690172393;
        Mon, 16 Mar 2026 12:42:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33be6sm3676665e87.7.2026.03.16.12.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 12:42:51 -0700 (PDT)
Date: Mon, 16 Mar 2026 21:42:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Marc Zyngier <maz@kernel.org>,
        Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, xen-devel@lists.xenproject.org
Subject: Re: [PATCH v2] of/iommu: support multiple iommu-map entries per
 input ID
Message-ID: <z4eqsfnxiprfktxi5g7miqqukhjsqqbivs4jqmox6r75x6pbyd@hgtkiy3ltyzu>
References: <20260315-iommu_multi_map-v2-1-51b98cb79331@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260315-iommu_multi_map-v2-1-51b98cb79331@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: KHExaKUIaM-BflghF0fVn7iNz0c9a9EN
X-Proofpoint-GUID: KHExaKUIaM-BflghF0fVn7iNz0c9a9EN
X-Authority-Analysis: v=2.4 cv=FvcIPmrq c=1 sm=1 tr=0 ts=69b85d3e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=b47Md4NF8ZsVKqcXDakA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE1OCBTYWx0ZWRfX9x2Jd4s+S7Jr
 YGo0YcmT2qncr9I21D4zsAjowajg8Vd3GjkesxfxQPPWHqg4IrRAXAjorbN8zs3j6kCY24YZ09T
 uirXobDMoDaceWNdWcm4mXbs3RUZKZsVmfo0+LpQAlyJ7QveBvqKcmIs0EpgNKofO83qC1RFgLb
 VZddzW8YuqJraXniCEbN+Q20ZcFAM5XO+fpglA7xhQWDddVWbwXMw/MkeVALK/1e795qiqYa7Ju
 lTnVmsVJY+mUqL12SBXCUdYPmsxeeDqt3StU+H/JPi1I6kpzn+Tf+sj5/6v/tF7lREU1QSJkZXV
 76FRug+7koW2exVB/KyTK/aRpM8PWNppRxn8OOd7AK/MBOIQTHz+mdAratRfyd2h4HaAkM8EYkm
 nRLGUHkHSg+azgUIeft5KY3HzGNcqzEwqzLmo1jDg/VnpmGaxxvh3Wj9kt9myMjt5ydG4giuYx1
 rQImRHHCHtxnH0R3RIw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_05,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603160158
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276374-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 45BAB29FDFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 15, 2026 at 10:37:43PM +0530, Vijayanand Jitta wrote:
> When multiple mappings are present for an input ID, linux matches
> just the first one. There is a usecase [1] where all the mappings
> are to be maintained in parallel for an iommu-map entry of a same
> input id.
> 
> Add a next_offset iterator parameter to of_map_iommu_id() and
> refactor of_map_id() internals into a static helper to carry it.
> Update of_iommu_configure_dev_id() to loop over all matching
> entries to support this case. All other callers pass NULL and
> are unaffected.
> 
> [1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/
> 
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> ---
> On Qualcomm kaanapali, the VPU hardware has multiple internal blocks
> that generate different stream IDs for the same input ID. The device
> tree encodes them as separate iommu-map entries sharing the same input
> ID:

Vijayanand, even I would not understand what you mean here. What is the
"input ID". Please describe the issue _exactly_, which blocks, what do
they genrate and when.

> 
>   iommu-map = <0x100 &apps_smmu 0x1940 0x1>,
>               <0x100 &apps_smmu 0x1a20 0x1>, ...
> 
> This requires multiple iommu-map entries per device.
> of_iommu_configure_dev_id() currently stops at the first match,
> so only one stream ID gets registered with the IOMMU.
> 

-- 
With best wishes
Dmitry

