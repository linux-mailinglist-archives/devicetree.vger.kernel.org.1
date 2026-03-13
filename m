Return-Path: <devicetree+bounces-275087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPOOLIHgs2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:01:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A154281087
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FCA4301CC70
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC7B38423D;
	Fri, 13 Mar 2026 10:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LclF2PTJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VeIyiljW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E994F388E65
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396090; cv=none; b=l3lfo44orn1D74HN7o2Lr19MZpFxRj6vV3s8+xS+dAE6yJV67O0vnKcaNn2wTOeqan+JFTnWwqen4f/mvPbRxm8d1dzgosLyKafy8UbUfy+PPK0zMNUbmdppEspFd1NzSyKNqPaMOz5TUf+Om8rB33BmMtrzBXhNo5VF74noDZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396090; c=relaxed/simple;
	bh=S7aXwcsmATfS0RvBPl9OaXee907q4vVJpmutHVoMFI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o+9B+YuGk34a6nJ98EzMQxrNidODrIsGqowIl1cxdGFScx5/wB8CkR6vBOQ1452RGbL1eCEU7BaX6fwvuheqkcBDaH6+rrGJAftdr1jeTJnldb+ICFz/iNsKqUobmcw0bn1TDqcPQUxfbP/rkIxXI4awck75Wv4IZCb+37kLwFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LclF2PTJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VeIyiljW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7JSKV240513
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bat1CIteF944V7E4NOXEcqYQ
	FCVrX/hrrlhDviWwGTA=; b=LclF2PTJxL78zCqAW65Pd06Xu6ZZceSVclW4yBmr
	9OslPTUk+NrMLeibQWBPdVri1p0mtdjbd6ydcjQtJ1dj83qqNypKrkPiXCumh9wQ
	FqSLfu9b6FwSyiaR3bzNSCymwLuXDW9xs9yc0BSZxkhvW0ICCkwbdh6XKL/Lbc1y
	pwfwwko62Znqm896NmGQgDFWYJLx4pxYP+Cv82OnjKejx0cMoQBhnH6Dvj/xbOZp
	Mbm6zGsOeDBLBCMGfU+NpbWlIL3ZZAPPlbIbI7Aqp1o4SE7tp35U2hNdSbSRSu9+
	CtwZoRAy0QGTD9+/G+HirMejYT/tA1kh2jP+GZFL0MzzUA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d8k5j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:01:27 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56b0b74eee3so22581704e0c.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773396087; x=1774000887; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bat1CIteF944V7E4NOXEcqYQFCVrX/hrrlhDviWwGTA=;
        b=VeIyiljW+lMsVJIk2yoOv0xsvRHw349tDzAcJn5bUlnkMmGI1WK7u5thxUm4AeCq4w
         6zDaoQIGGpDFwybF0ApFk+W7phr8SX+PBkcOrrX7vrvQpSiGgIllkMbwuX8bihHKC9iw
         fdO5EDGgKyd2gwK5wk/L/jCjb/0HCynpRew3w2SFo1nivMVPn2t9w/MqZIsuW4TDcMJb
         ua1fXiyMVePriBw2on7PV/XEuRa0D4IcsdPguyyidSZKru3iRJ3bFqhNiMt9An565wNh
         LAzvX3iheEbv2zkD8S5uhz+yxC1zZSxpeLZmD0RrT8xa4DBoe8lnoh4sefIoqyU+0Sjl
         UqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773396087; x=1774000887;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bat1CIteF944V7E4NOXEcqYQFCVrX/hrrlhDviWwGTA=;
        b=hFeAuoijo59UldZ0QY7VTVLx4u6CxW4blp3Tim5oSzv8y7eTwlYQ99HBPElp9x3Fyp
         ueGPyWfqFjxiD4siselu9HvEeufEhhLAf4/ItkR7kVYFzjQxSh0JzTTVfOQbVC+Ffs86
         nFVlvPnf2NpJCqOjR2AndGXZAfLO2RRrd8VYi3l/q6THjaMd37lU872u+5pS61Ab0fkK
         pAsFGurNIElPHu5RckAL+eiPSlpZdhmTTietDshxFkfy2+H5upWHtTDHE02NpKgN1z1g
         /TUHkycBEuFTnKDOnckQJe5jkkoap8KsQzdqc7quI/EdwQxg2WcD/7Eqd/5bNazHwlRI
         e1ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUylWrKnnv/80Vgz19IRb9l/Jr4/FZFLCvgEjmQzwCQj0LgQ+ihxNoNFGr/zJRJEc1NDZGghnEMggfZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwIB6sm7dEsS+sarAyar7vUMIIYPI9d+R313ogQGdcZfAlF95Qh
	YifdUHDWGeRRnvX1rizl9iivFqxx+g+gx7ePdPp1yc2ylvhUqcN9PZzxv54+Jqo1kHuEyFZn9J7
	aET88d5C0xxw74J4oTBkzhqZdwG3i3GsFL+dnf1SIn2oH9eto3C+1bp+Gfv74Cd9a
X-Gm-Gg: ATEYQzxBsNCaYsYcfM7kA1ZwETm8icjbMLH269v1xXchLK6RRvcyCz05Nfy09eD7Hv+
	klaUQzUt/ua90jFXCC+v6N3dSSrcVHGyDgifvIZthlIBLn2OhmbqOXrosGrcB0XhjYSNwUirG/1
	GDA9vBhjYUKa9Vk+J1XqbjGa3D7B13NUG9srADp3Ef8nESO6G4Xlp2JoHu8HFEijWJVLATWMGX+
	5DjCbbmIv3LYXX7Xpw2ClkcO1lwAIfOTYtULxnax0HhOaJupSPoRopw6t5wXyWrYh46azjuXtVb
	mjQJI+8m94GnwvPvkoyQH2U2ksJ3ICtrRQ3567UAgMmfBfT2Iltkl3vcrTtFEbgpvKHM4PZ0XVY
	xSDXPvKfsjjIHcv23c1i95dJP6Y+Fzg70JHU+5V8L3nn2e7pHH+lI/Quuk/b4DWj0+yM6mIOv44
	S9grHThIREppbQ/9OamCGFDWHMq8aW98y3XYo=
X-Received: by 2002:a05:6122:8c12:b0:56a:ef5e:3991 with SMTP id 71dfb90a1353d-56b6289d3a4mr977864e0c.6.1773396086160;
        Fri, 13 Mar 2026 03:01:26 -0700 (PDT)
X-Received: by 2002:a05:6122:8c12:b0:56a:ef5e:3991 with SMTP id 71dfb90a1353d-56b6289d3a4mr977765e0c.6.1773396085416;
        Fri, 13 Mar 2026 03:01:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e2ecsm1429517e87.25.2026.03.13.03.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:01:24 -0700 (PDT)
Date: Fri, 13 Mar 2026 12:01:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Cc: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add Mahua SoC and CRD
Message-ID: <n2nf6kjuuizeweokhwqnqgasd2pupwyfkvrgereesw7jg2lfzp@hosaxzjyl77t>
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260310054947.2114445-4-gopikrishna.garmidi@oss.qualcomm.com>
 <vznk4wbziuieoctzrqwbjm7xwdudsrj4afanl5lx67mmbar2rx@5msox6m4h2xn>
 <ca27e82a-beda-489d-979f-f99c778c97ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca27e82a-beda-489d-979f-f99c778c97ff@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: QQ1h16AaZps1mWzk_XYzTaarZPj8-9jL
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b3e077 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=SnbDjlwmeUv7jDr-Z4gA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA3NSBTYWx0ZWRfXxtsJz66fk6ta
 6uwdwIzmuzj2w1whOcEAk0iMvzYYdlPZKlxr7hKXTIMjyPWqdoWzGTdr0PVTZ6r/XpILhDw+7fI
 BKHW8TtceC1meXR5tL0mhHIIq1ijgooBFYC0KhyqV73FiTR+qZ2OY2UI75CUVYuhNplTMxdevYb
 hhRZ1Dv3ZBh1z0ElKp2BQXlo2VrjhS+/dhkVXNDQ40S3KESP49FibnZEdwJqXl+PPSWiM7DXc8f
 TKkxCqQ4N6VZ1uOMJHI4Rna7vMtCyHiSMUwdCApEr6mYykNd1VzqK0xI2Zja2IYM04GtSZcvO0+
 8jpvtJIjKfCtZ/pf3E3Ar9ap7aJhtzUP3FOxk5H1dj8gJXu9GvoHuX35ZHMI1c+eDM1yS946tSD
 sIFIr4OeXHKdNWBbvguh0Yp1vJOcsOxNYCEjPk+Rx+QAnx4fD2pkrQNrs8+bdWOF+ZwTr4CU4M+
 LWd/eiOw8bOO88h2qYQ==
X-Proofpoint-GUID: QQ1h16AaZps1mWzk_XYzTaarZPj8-9jL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130075
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275087-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	RSPAMD_URIBL_FAIL(0.00)[qualcomm.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[kamal.wadhwa.oss.qualcomm.com:server fail];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A154281087
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 12:38:04PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> Hi Dmitry,
> 
> 
> On 3/12/2026 8:32 AM, Dmitry Baryshkov wrote:
> > On Mon, Mar 09, 2026 at 10:49:47PM -0700, Gopikrishna Garmidi wrote:
> > > Introduce support for the Mahua SoC and the CRD based on it. Some of
> > > the notable differences are the absent CPU cluster, interconnect, TLMM,
> > > thermal zones and adjusted PCIe west clocks. Everything else should
> > > work as-is.
> > > 
> > > Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> > > Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> > > Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > > Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > > Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > > Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile            |    1 +
> > >   arch/arm64/boot/dts/qcom/glymur.dtsi         |    2 +-
> > >   arch/arm64/boot/dts/qcom/mahua-crd.dts       |   21 +
> > >   arch/arm64/boot/dts/qcom/mahua.dtsi          | 1040 ++++++++++++++++++
> > >   arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |    2 +-
> > >   arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |    4 +-
> > >   6 files changed, 1066 insertions(+), 4 deletions(-)
> > >   create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
> > >   create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi
> > > 
> > > +
> > > +&tsens4 {
> > > +	#qcom,sensors = <13>;
> > 
> > This matches the value in glymur.dtsi
> 
> my bad, it is supposed to be 11 for mahua. It is taken care in below thermal
> zone list. Will update in next revision.

Good :-)

And now you see the importance of it being a patch rather than a
complete thermel zone drop. It is easy to review diff. 

> > 
> > > +};
> > > +
> > > +&tsens5 {
> > > +	#qcom,sensors = <15>;
> > 
> > This one is indeed different.
> > 
> > > +};
> > > +
> > > +/ {
> > > +	thermal_zones: thermal-zones {
> > 
> > You've completely rewritten thermal zones. Can we patch them instead?
> > The difference would be more obvious this way.
> 
> Out of the 69 sensors in Mahua, around 27 sensors show discrepancies when
> compared with Glymur. These differences are not limited to sensor ID updates
> alone; due to changes in sensor mapping, some nodes trip and cooling binding
> require node-level updates.
> Additionally, approximately 23 thermal zone sensor nodes need to be deleted
> individually, since Glymur has a total of 92 sensors.
> Considering this, would it be better to delete the entire set of thermal
> zones and reconfigure them specifically for Mahua to improve clarity and
> maintainability? I noticed that Purwa followed a similar approach.

I will take a look at Purwa, maybe submitting a fix.

> 
> Thanks,
> Manaf
> 
> > 
> > 
> 

-- 
With best wishes
Dmitry

