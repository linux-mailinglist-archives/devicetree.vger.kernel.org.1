Return-Path: <devicetree+bounces-269692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id s8tuNhUcpGnPXQUAu9opvQ
	(envelope-from <devicetree+bounces-269692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 11:59:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 308521CF3CA
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 11:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2B273014955
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 10:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013912E7635;
	Sun,  1 Mar 2026 10:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZbRtpKNV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FNjodZfR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AC92E093A
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 10:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772362770; cv=none; b=iE+9s4QAbOji48ZxieCy798C/bVkuyHEjZnlBq+GKu8mBSNDWZysRWut82ATQzA+32+nf+r/ohztX7Nzdq7Gqi0lu88QBnKDDK1DKwO1VgMUoVAJWd9ANz9nDsW88zpI5gfcDltM/IDHnqMpLErSrpTOVOLMAscvpmZi5O3GJ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772362770; c=relaxed/simple;
	bh=ma5KFEqHslgRuuIwDm092krRisjxb/PVQ/WF+lX7RAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P1uqcTY/08/syHrAT7v/tioq+TU1C/Tlc9pEa5iO5+gf6lefGE+Juribl4DM+CDkCdtshrjlEQotB9fAGfXJ2H9jiteTRVN8qybVRuFSEZ6KKr6ccI2T9byNREiF/5ADjCc5AD+TrJOnZjT9PJknU/5l/vmnxo95SqZyEsGGCi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZbRtpKNV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FNjodZfR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621AHmYi944323
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 10:59:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tWvbzoSirp2+/mfj208EVtuC
	kSsURTVI0XL++QIzXe8=; b=ZbRtpKNVrLZlATBeln8U+o1HVMJ1NJFODQD2g1Xt
	5zqmD26FEi7oT89X6dB/3Kf0XkkF6A8sXLJiy6k2cdCfTElYXz+CjMK5FIy3AQPe
	xpwFsAEbry2aIJz+ovYfTdhNnokCCupYZNrBBmfiE6N5iXxEnaecxqJfkBq7jA6g
	atxv+7P2SKJ+CThu9PnqyE+e14r5zyxB6+fChJWyb7bmsbhO1nbIl9sdXtyQ92aF
	9NNtP7wU75FlG/y0oxLuqIE1sXvncry7ovuFrwD64sbYiUvq0bz1X2QeTCCuTyIj
	PQrXowySKFMO/mebdHFA3zvBB6060oQ2+M3ZZuPrtLkY+g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgq2kqg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 10:59:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb42f56c4aso3330751785a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 02:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772362768; x=1772967568; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tWvbzoSirp2+/mfj208EVtuCkSsURTVI0XL++QIzXe8=;
        b=FNjodZfROy8PDZ8894bTGs3Y3BWNGtnrD5haRrzP61itCm0bPjRxDe13g01iYiNRCq
         Q6qkdKSXweYzT10IDgSp6A9f/oZFntmUky9Y4fhPB8ZUKH5vE1VDlNR8kx16Vw1LiZHs
         7ASk5gmBkK2LWE/6uWxWvYG9VkyxZu5UCxHkj9z+7MLNcC9gF+yls+5MD7bFp0odipLB
         8o0+poh10AVUi3gKRlMvMOMI2uSWRVzH3yGbSsWVdgl9IztKfUB9yHdQMSizsEiuoLu4
         Zx3xmT8m4TbOiT6ZWV1z0lH46ARFTadI5cQqNFTvCKQbS4VedMFCeECn5J4PSbJ3RxCy
         QOig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772362768; x=1772967568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tWvbzoSirp2+/mfj208EVtuCkSsURTVI0XL++QIzXe8=;
        b=KS186B3ouMni2dzMd7AP5jws7BqZ6MVRFGU1J3hqervx0kZarDsx5IpBxb+VFbQJfW
         RpS/hIoiOrP+hBHeRnhm/kke+O/3Ih+2n3EB148GPWO3uaj3Hamx2DEkgn12aUC7/Uvz
         yCc1mh0wUW+qGCAFAjfYrwGHNLeouP6Exs7QmLXS8ZAMT3xbEInadek+Uu+IpCOVX/Hd
         FLD0YVYJfTm16gs62tlxK4R0vbo89bqSQwGAnFVkj03w8lR3oDxo5t2Tn6s3qQ2haofO
         0ncCZa+LSIi2xPcaykIpDXqxEbxoO+jLevG66sj3xpdxwCMn4kyIVDnSJL6jJngC73Ci
         1gmg==
X-Forwarded-Encrypted: i=1; AJvYcCUA/77J5IKR7CvviRQDFAE75peRh6qHmnEMc7E7fWdsjxFQQgb5Wrq6CtDeRxYlMi3IBM3jA6gEhdhl@vger.kernel.org
X-Gm-Message-State: AOJu0YzS56qsvKCcsp5kZy98OwTawphbMUFTLsaBBuR21l2xsPovnBwc
	LM5KsjyM5IRacxEZX79xi0exzZi6JvRT6D+UafOG4e1GK3NHEX5vpOQ/Qv0ret2yEmQilJXhsso
	fwbKmCAsAZ9FS/nc07bFpIloVsXZX9Hfrl7/SOJ6J29bieFkXkPJddH7sc6SGzpjS
X-Gm-Gg: ATEYQzyQjEdvypqD/04R1TJ1JIxNyRegTe4RdmGp39psiG3aE0+1Qktpn3Hg+H/j4D0
	BM7jRFSOVnLos22V48oVWbOxF75r1hk2JsW79sUnQ8NT7K8SUD3mHdZEhswuqM8heDM8b4gDz+h
	g95qlVTVcapH3uXzoXyThH+RS/wWcS0hEyGxxmWPCqiZPLzZLhk230Y+gbSYSA28Tl7DCN+gYqJ
	I8INm1PAr4IWLeCAaGteOX5m18Cy5XIG4tD02lkvLfebtYPNqBxd6zGbq5smLqumMC20h6gyTC6
	egeSTilZUpdggSKVET/dXkQSDMEL9UrqzSfeng1Hpift0bFpC7NqrvsQrTAKuEsG6HivwpgBVve
	fzZZoitCRnIUSbYcnerz01aWpPJWcLloDJhCZp7Y1U5c8KHGJlhB+uIn0YfcW2QPsfvYtpMLb82
	F4Zxwk2vErufv/r7h2NvMhokA0H0trtBRNFhk=
X-Received: by 2002:a05:620a:3949:b0:8c7:1b3f:7d0c with SMTP id af79cd13be357-8cbc8e55216mr1090395285a.16.1772362767956;
        Sun, 01 Mar 2026 02:59:27 -0800 (PST)
X-Received: by 2002:a05:620a:3949:b0:8c7:1b3f:7d0c with SMTP id af79cd13be357-8cbc8e55216mr1090393285a.16.1772362767407;
        Sun, 01 Mar 2026 02:59:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a116de019esm872280e87.3.2026.03.01.02.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 02:59:26 -0800 (PST)
Date: Sun, 1 Mar 2026 12:59:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: Nipun Gupta <nipun.gupta@amd.com>, Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Subject: Re: [PATCH v9 2/3] of: factor arguments passed to of_map_id() into a
 struct
Message-ID: <bo5kb53hrzvl6e5mctvnpqluobdgbpq4x3m5ca7mwtfnl53npw@7axqsph2vyqd>
References: <20260301-parse_iommu_cells-v9-0-4d1bceecc5e1@oss.qualcomm.com>
 <20260301-parse_iommu_cells-v9-2-4d1bceecc5e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301-parse_iommu_cells-v9-2-4d1bceecc5e1@oss.qualcomm.com>
X-Proofpoint-GUID: Jh9mT-HikxHxtwl5L0exSt-O8715TXXV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDA5OSBTYWx0ZWRfX6YcOojIofISe
 S6LXIk0cJN5cBHQybDp5VlhqC5ilwQ1QKp5dCkZXAuSA3mwjl5Uyw3hiXY3PNKhlDgMB4/GmqUb
 NuLgO2krumnjtgGZb+jKQGi8lDYqRVWYiN93Wv4Q+VlJ63cdOkeapREdPAy0xQ0gx1+++r43LFI
 /+Ftxemg6FQRsBTj1I++LEEEoYVsrNOIwNcGVHrIzlcZ3K+3bA22M66D0Ve0r6RxCvofD0R4FqL
 6GmDcKlR5/v17GdFFStmD3Ir+2DBBB3ia0pT53RjVRVJnQljLV3doAL0nYiCKdMqB8teN1HQcXZ
 E6tTRbt2rQyWXoELW1LfiBVtxYiJlZqCZQSma07n4Mo2mLbEeZjnks7Fh+GVFXobgEedAh605kg
 kISJsD499aI1W40CuABgTtOC59s9MuqXaafdUxKkAGwiFsHqWiYKHON6lJfPFRUp46X6QLvOTh2
 /iXOFAHw299e58d8khg==
X-Authority-Analysis: v=2.4 cv=bdRmkePB c=1 sm=1 tr=0 ts=69a41c11 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=Dq95N7oyZucg39lo86YA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Jh9mT-HikxHxtwl5L0exSt-O8715TXXV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603010099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269692-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 308521CF3CA
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 02:04:20PM +0530, Vijayanand Jitta wrote:
> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> 
> Change of_map_id() to take a pointer to struct of_phandle_args
> instead of passing target device node and translated IDs separately.
> Update all callers accordingly.
> 
> Subsequent patch will make use of the args_count field in
> struct of_phandle_args.
> 
> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> ---
>  drivers/iommu/of_iommu.c              |  2 +-
>  drivers/of/base.c                     | 37 +++++++++++++++++------------------
>  drivers/pci/controller/dwc/pci-imx6.c |  8 +++++++-
>  drivers/pci/controller/pcie-apple.c   |  4 +++-
>  drivers/xen/grant-dma-ops.c           |  2 +-
>  include/linux/of.h                    | 21 +++++++++++++-------
>  6 files changed, 44 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index a0937b7b3c4d..e1d4b37d200d 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -755,6 +755,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
>  {
>  	u32 sid, rid = pci_dev_id(pdev);
>  	struct apple_pcie_port *port;
> +	struct of_phandle_args iommu_spec = { .args_count = 1 };

Hmm, I didn't notice this. Parsing functions are expected to ignore
of_phandle_args before the parsing. So passing .args_count = 1 is
strange.

>  	int idx, err;
>  
>  	port = apple_pcie_get_port(pdev);

-- 
With best wishes
Dmitry

