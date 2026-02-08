Return-Path: <devicetree+bounces-263704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4K/bDAiqiGlEtwQAu9opvQ
	(envelope-from <devicetree+bounces-263704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 16:21:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F05109242
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 16:21:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 769AC3003363
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 15:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D00F36167D;
	Sun,  8 Feb 2026 15:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JWbqnX4T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SJUGvRMt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D03C33D509
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 15:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770564101; cv=none; b=nRwN/iPLmVaZergftwxtdBz5ZDYrQfTuLPbGOBsuk447yHYZPbjL0pHUKld5H6Z9bELGgMO3JzLinwv9eD18BYkhhKvjLh3vvj5TDCspAadO4S50o9n5WrS/vaEubsmy5t/0iJMzCELVPF/zp8PjiLefqPkw3dzxYnvGDVQ1uuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770564101; c=relaxed/simple;
	bh=rbkGgBXNEBZhqF3SJQCK1RAT9yybzCeAD8JcMpgnsw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W7DUqftPBE11rN/TLfbwhAFQQ0zei3RyUcBxc8CvU5yIZfAwrPuJB8n6zufLzrKiOZPweo+kQ32DVWt711CHdUp/wPPZvHFN5Ln3nb3ZRpX801ZPJ271kacfI3shMCmM60z5iGExHio9EyGq4HTR/NyOWCDQLu26GKmuuKhCK5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JWbqnX4T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SJUGvRMt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6188Pkg63544825
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 15:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FqXl0PxwFGVhMHqokd/AhV8TvohfxCdbdX0INQQraN4=; b=JWbqnX4TPEXGp/Ni
	HTusEMxCOpGojDO62gboJzkcF5dLQhi6RLGWOmwIUQ3BtJIGwQtevCmu9e+KYvNf
	NUbJ1f604UbijC4oJnvQDRux5A/NCOtT17nl0/K1gwidioEcpB6twe6Q/R6Algmy
	B3KhHH+eSLD2y2D4fBlPXODv6F0pgoAucvKqe5YWeR0v70RZE+KVfUFu+EINXFXP
	AWXRWZ1OgAamCufM40j3ntBgBdPzhFKA9TnZXgjddANMblulIFKhTAA3bvaUvAbo
	MXFejev+0BqsYdOTXm100MPn6kPeeTFJmONw1Oc/cK6R556/y3VgB51NO76IctCM
	CL2ixA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xp7jgnm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 15:21:40 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3562171b56dso858302a91.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 07:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770564100; x=1771168900; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FqXl0PxwFGVhMHqokd/AhV8TvohfxCdbdX0INQQraN4=;
        b=SJUGvRMt5cNTyEs+AAafP+SqNQ1uqMQD/i7pgQp49LmsN5TI7qYHFFdrw87yJaRD0Z
         lvmywC16Ixb/SG5g6lbZpttHPVEXwY91aANDq1ldm+1FqzusktA7elzBmhVaNr0HwwQf
         3kWdq9Atke80fZukGyc+FU6FA6mHAoDEZXSKslR0q8M8yQxjlEfZeG1uso1Ah6Mam5IT
         xEnm+e5kgEsDkfdxcXd6OyfHlsPG3Wtc4joMPStAVn6fJy0VqO4TGsmDBvLfCbLu42LO
         dujLX8Py95yJow3Eqrq78UUNOc1BFv3dudWQVbY7gVFODyLlAEHKboaOLOkrsnIF33HN
         b6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770564100; x=1771168900;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FqXl0PxwFGVhMHqokd/AhV8TvohfxCdbdX0INQQraN4=;
        b=TMMrHs5sLgHy4FjHrPvJRyEfYuxVBYRWYavC4UGTxx8taA3Fa6x9EsCcRMOoXOjAg5
         fyyNslAjyZOUPEDYUV3aA9ma6NW85ANjs6HY1kuKMhLjAMh6BKC419XSTEjgOTo4VWUS
         txD6cFKn6WGOaotC1+MLdZ1gdr4GmvcjQ+eOyujPMpPSs845DDKijblu/bRQCQOm+dzW
         lqZsUPAwA+bD/xqADk3/KjDSLOS7b2IVzQ/HsFjnGXcN0mV2bzxOoh8xv6Zr4PbEKH5k
         zH5DJfaNLxDA6YtPgcY0w9/Sp/cQQ8KIRTEDs4E83gZSROdpXMAoPTqt7BYFwLuUX/RB
         FOtg==
X-Forwarded-Encrypted: i=1; AJvYcCX34dka0J2SBqbSF0IQZkOanoCLuDrEj98a/TcHxmZ8yxEH1YYB32Rm5s3P2EMR6Jy1uQg+F6HdXT3g@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1YtoyT7E3kPGz1sDZExrtDoYPQg0EjkRCFL4vvLMHL0+DlPLA
	YS9NCAfULfFMLjNFxyLQX7chBnutG4XXwpqXZAYAgrUeRQXs9lc2azGXTkVst/PV93VhSF7K15b
	AV+FXb1zE4bPjnga6CO6WNSSIu/rRE/FfZI+Y6jllbgwIzBGO35kezAGv9cpEpi8c
X-Gm-Gg: AZuq6aLU0e2HPhyO0W5b/ZUSWmG7x89llMXtB4ffoX4mGsjvxpRq9ytv5ERpo9dMfQQ
	Pw/o6/mvVgO3nz68iZQtPZHjnxaQYxO86DNdNSSooWNf5hSbCE1mOfIcxNjROueo0udhIqkAmP2
	7iVih66NZQ2wwLrSMC5VmusIYxBpNqcdTWrSXsrSxRrRYQ+pH5HfyuiwlaELwCyPmyWaqncagnM
	RdAuAppeaRTvswV14l/VQDGJCM20UIXO5VA+qIu3bjfbjj/Vj2/0Fk1aeguixSJ9hwT5Rvy2Yvr
	2SNvFKHJOlvQoHkQNbLbKmqmm4mkF6Una6Vs8M0DXyv/Ndf3DB8IJkXbLzWXXY/BzCtmiU+eCGd
	Tr7niCu+hCSV7FcEj5p6uSvVVlg==
X-Received: by 2002:a17:90a:ce06:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-354b3c406abmr5746433a91.5.1770564099487;
        Sun, 08 Feb 2026 07:21:39 -0800 (PST)
X-Received: by 2002:a17:90a:ce06:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-354b3c406abmr5746416a91.5.1770564098815;
        Sun, 08 Feb 2026 07:21:38 -0800 (PST)
Received: from work ([120.56.200.146])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8244166f3e2sm7798714b3a.10.2026.02.08.07.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 07:21:38 -0800 (PST)
Date: Sun, 8 Feb 2026 20:51:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Saravana Kannan <saravanak@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, robh@kernel.org,
        andersson@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        qiang.yu@oss.qualcomm.com
Subject: Re: [PATCH] of: property: Create devlink between PCI Host bridge and
 Root Port suppliers
Message-ID: <apfr6syofeffm4ffv67viacsi4bvc5hd7ozk3ddcdcl7kisjee@qsbusru4uns2>
References: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
 <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
 <lnzmgsdjckbf6u5hxfqm4kzlmcg2cqvszcg7otmkqxaj3yzdfq@vu232xx5kts3>
 <CACRMN=eu7n+wCD3vRY-7GSKpqf3VG=oyDoQdeauiEHGK-q9pPg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRMN=eu7n+wCD3vRY-7GSKpqf3VG=oyDoQdeauiEHGK-q9pPg@mail.gmail.com>
X-Proofpoint-ORIG-GUID: cxOQBj6l_0zXLO0YZ0lYslAv5ghDqG0A
X-Proofpoint-GUID: cxOQBj6l_0zXLO0YZ0lYslAv5ghDqG0A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDEzMyBTYWx0ZWRfX6rawPFTBeHVj
 pcIvLHfcnyfLars9njAH9R5vXxyxJJ6er+o7F276jqWISe7UnFRDLohyZZLcPw8Ppt0djtOEm76
 Jjb+TCzlMzA1kU0iYKRIH3/y/36/8i8HbANcYlJLRFpSKU8AVPrCbTenaIK9v7bXS8hc85gLsc4
 1Vj+DXYTtk62DEIu1U7W+WmVh+ZxC2hkWz7P2HbPMkoImdSXdoi1HRscprgQfaOwn0fXyYqePRO
 DlWOMYKwncTqcuKRcKgAPRxwkyv7TqczswaP9IOPJBeu7jxTWdbdNh2aph4lVzoAaklCd1sHhHY
 SW2kHzIS86MUt2ZKs2pUhiTkQvzG0VVLtye0lDA4jLD4P1o9vkYTYIm82pH7TQ86aIu9m8bGOzG
 jQT/wHYkRSCKRVjokqfO7qoUChd6ZMjI8WBECvb+o26upxklYZnI/w7Nbq704Iwma4KAHsYL9cA
 PgsQyU7CI/rNFXlU7Ig==
X-Authority-Analysis: v=2.4 cv=LvafC3dc c=1 sm=1 tr=0 ts=6988aa04 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=DHfHQa+YbVGEVSZGM/qYKQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=XM9O8ktxEgGi1oA9ZMIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602080133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263704-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,work:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 15F05109242
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 05:27:21PM -0800, Saravana Kannan wrote:
> On Thu, Feb 5, 2026 at 1:01 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@oss.qualcomm.com> wrote:
> >
> > On Thu, Feb 05, 2026 at 09:50:20AM +0100, Konrad Dybcio wrote:
> > > On 2/5/26 8:06 AM, Manivannan Sadhasivam wrote:
> > > > In the recent times, devicetree started to represent the PCI Host bridge
> > > > supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd4207
> > > > ("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). But
> > > > the Host bridge drivers still need to control these supplies as a part of
> > > > their controller initialization/deinitialization sequence.
> > > >
> > > > So the Host bridge drivers end up parsing the Root Port supplies in their
> > > > probe() and controlled them. A downside to this approach is that the
> > > > devlink dependency between the suppliers and Host bridge is completely
> > > > broken. Due to this, the driver core probes the Host bridge drivers even if
> > > > the suppliers are not ready, causing probe deferrals and setup teardowns in
> > > > probe().
> > > >
> > > > These probe deferrals sometime happen over 1000 times (as reported in Qcom
> > > > Glymur platform) leading to a waste of CPU resources and increase in boot
> > > > time. So to fix these unnecessary deferrals, create devlink between the
> > > > Host bridge and Root Port suppliers in of_fwnode_add_links(). This will
> > > > allow the driver core to probe the Host bridge drivers only when all Root
> > > > Port suppliers are available.
> > > >
> > > > Reported-by: Bjorn Andersson <andersson@kernel.org>
> > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> > > > ---
> > >
> 
> 100% NACK to this patch. You are touching a core part of the
> fw_devlink code to fix it for one specific case. This is not the place
> to special case for a property or a framework.
> 
> Please fix it on the PCI framework level please. Couple of options:
> 1. Revert the original patch causing the issue. The patch was from
> Qualcomm and they didn't test it on their own devices?
> 

No, this is not the case. Even though the change is applicable to Qcom, the
design is generic. Let me explain a bit more:

The PCIe Root Complex (aka PCIe controller) IP integrates two components:

1. Host bridge (1 per controller)
2. Root Port (1 or more per controller)

Historically, a single PCIe controller devicetree node represented these two
components as most of the ARM platforms had only one Root Port per controller.
But then we started seeing platforms with multiple Root Ports [1]. So this
created fragmentation w.r.t bindings and controller drivers. So Rob suggested to
move the Root Port specific properties (PHY, PERST#, WAKE#) to Root Port node
even if the platform has a single Root Port per controller. This move aimed at
easing the pain when the IP design moves to multi-Root Port design in the
future. So this is how Qcom moved. Now we mandate all PCIe controller drivers to
split port properties to Root Port node.

But the problem here is, the Root Port properties are not controlled by the Root
Port driver (drivers/pci/pcie/portdrv.c), but by the controller driver itself.
Because, most of the controller drivers need to enable the port properties
before they can program their own CSRs. Since the properties are moved to the
Root Port node, the controller drivers are parsing the properties themselves and
controlling the resources. This works fine from controller driver PoV, but
fwdevlink is broken since the suppliers (PHY...) are now associated with the
Root Port node instead of the controller node. So the fwdevlink cannot associate
suppliers with controller node and allows the driver to probe but only to defer
multiple times. This is not a big concern as of now, but Bjorn started noticing
1000s of such deferrals which increased boot time on Qcom's new Glymur platform.

> 2. PCI does this weird thing of setting the of_node of two different
> devices to the same of_node. Now that you have this new node, I think
> fixing that behavior to use different of_nodes for the two devices
> might be a solution that might work here. I forget the technical terms
> used in the PCI framework, but I think one was a the bus device and
> the other was the root node.
> 

I believe you are referring to controller device (platform) and Root bus device:

mani@work:~/pci$ ls -l /sys/devices/platform/soc@0/1c08000.pci/of_node
lrwxrwxrwx 1 root root 0 Feb  8 20:31 /sys/devices/platform/soc@0/1c08000.pci/of_node -> ../../../../firmware/devicetree/base/soc@0/pci@1c08000
mani@work:~/pci$ ls -l /sys/devices/platform/soc@0/1c08000.pci/pci0004:00/pci_bus/0004:00/of_node
lrwxrwxrwx 1 root root 0 Feb  8 20:41 /sys/devices/platform/soc@0/1c08000.pci/pci0004:00/pci_bus/0004:00/of_node -> ../../../../../../../firmware/devicetree/base/soc@0/pci@1c08000

Technically, Root bus origates from the host bridge device and connects to the
Root Port device. So we cannot bind it to Root Port node that we are discussing
here and binding to the controller node would be the correct option.

> 3. Just create device links if you know you have a weird case of
> dependency that fw_devlink doesn't pick up? It's generally more
> painful to get fw_devlink to ignore what it thinks is a dependency,
> but thankfully that's not the case here.
> 

I would love to solve it in the PCI layer itself if there is a way. But I don't
know how. The PCI framework becomes operational only when the controller driver
probes and registers with the framework. But we need to create devlink even
before the controller driver probes.

We do have the PCI class which gets registered during postcore_initcall(), FYI.

> Please continue cc'ing me in future patches trying to address this.
> I'm happy to give guidance if you get stuck.
> 

Sure, thanks for the review. Even I'm not super happy with plumbing PCI
specific code in the core DT layer, but I'm not sure of doing it elsewhere. Any
suggestions from you would be greatly appreciated!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

