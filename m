Return-Path: <devicetree+bounces-257746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II3TJNx0cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:40:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 53456522DE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 707954C7B07
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D1841C2FD;
	Wed, 21 Jan 2026 06:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pmr4inOx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UPieECsF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38143318EC7
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768977531; cv=pass; b=PRu85scZCXkyvKvnJQ+y2w0++xIIKvje8Jhqglc4G9YmOyWUSqSetLyaPJW4YU/ycsd4bVClgKED8GNa+AJ5wBuBssx/gcR4tHEKYfYeE8fmVeif5IAdxiPDRztrctMC+RAs5E9C5REmQPYuZiNNjnUz+lHrYbo1vwVB80Z2bZ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768977531; c=relaxed/simple;
	bh=Dtf4w95lF+8TX0T6sV6oHXiZp1Ndj03ujSIe1/MJOi0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S7gDuFz5vQLVuxs7NFMT6bfPoJ1Hmwhz1s72QwXbsYuMXzIUX0I9HPWPk4JkrcIKdOv8gGhB1OM+pD4iByAVEmbKkRcMQadC1IY2Rv91XSrUW/4fmsEwVkFfbrOpM5fc0p8tzx7yj73KXdFzZSkGzc/BYaTOCunkvkZDVCpf/Wk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pmr4inOx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UPieECsF; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L6KJLG1037150
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:38:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uoVAHLF3EYmcr2exeun9a/uy
	VZa4cbJ6kjUkolrWsj8=; b=Pmr4inOxwo5dFwMqmub3kZgpcFcNiouqtSaI47Zb
	myAWqzp74odY3kdgejAX/qQVz7bE43fLbICO7B4D6GgRjwirHBT5xdlY6bAefa71
	2QleDdLpexovb3bfbsdaTHG4oWMQnhvl3XfyQ5Qtq6USrprsb4mbdoHCSxJs898J
	i0xpiB0IHi4YGxUZdU+T0067DZtReec4iouIZQDOqwRDh49+wNO+enE+R8jBiyWq
	iGD+3RU6MAChHGdQcK2BdpncWLqrdRziTWybCBL390QecM/buyTbM0jUxcgiqHPp
	2w+rOwH5xgEKQhtO1H60v4a5BQqXL2B1pxfNhUjiTKPEOA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bth55husn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:38:48 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f25e494c2so8770225ad.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:38:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768977528; cv=none;
        d=google.com; s=arc-20240605;
        b=PSiqjOqXouyBZ2n1WcBWvx3rL0fNg0OIxxemaqFh2l070v+BDiIS6q7Qmv3gnY1jCw
         OYcQWdN5Uf9D/W/Nm2c+xLmi4FpquV5YT+TGUs5eKjukzsZDNjC74f8dsqZDp+I6Ijdv
         dXh6W8h2yfrmyOMQYAMWpqN3ikXHsc1Il3FnoGjDdt5HbW+F+khCeqA9ALbGuckPKD27
         KBGQHX7uj0oBud5qA7vJ/HOfOPrJN7IQd5ClD9NJ5CuHf0YaHofVQtLgAHZEaCO5PE6r
         GiwD7KLtA3jBlutRHJKti7MZpn8dJesjtV9bA2Dwa157+cMk2RxtF0jLFZvHED6Yy1H2
         VZ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uoVAHLF3EYmcr2exeun9a/uyVZa4cbJ6kjUkolrWsj8=;
        fh=skWeBOQogmGNcc4Q9EEaB/Ice3TMVLOfG5V0gFaOxQY=;
        b=jxQqfonGmZS5G8Bd4DZGgy8atLRo3zha9jrX4CzZJ8wlzoLql4HgtbALUdxYU2ENhI
         h4iAx0AOjij6CUBZMGMj0uCwMOvLf1fgKR8sIIsGKdHfqmRMD4SQekRDOesgS1xzs2hB
         CJXnCO5MXoQuoRvzVetF5vFIoDrwaP3MFveH3UvocYAIsbnzQsVbNNRDuaO2PUfnKGeJ
         4Qc4NFWRbd8p9LZeDMwi779wzv/4ws58QSQ2cYT0DcloycZPq7Nc7on1iOdkoYZRlz03
         tsnPluKKrq3JPvHM3Oi9tpmvxXLXwf6hUAsDyXCVc18ufsHgyQrJ3SUegDWG0tO1cG3/
         KqQQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768977528; x=1769582328; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uoVAHLF3EYmcr2exeun9a/uyVZa4cbJ6kjUkolrWsj8=;
        b=UPieECsFU8LuBP2467hoZ11x/XSJkJJ3qB5rp7n/J0iz8IBK819pd4HZVXaROgyYA6
         +KFr2gyKp4O8Z5q6UTikQyUh4ZnPKureMOB3cQbO+f1MqlhrqQxHFrEDgIXRQUEBosTk
         nky7HxXS6B2JRR652F3jZEHO6XWPdo7G6uDk1nT1Qr0rxfY6/WLLRpVueepgui4pWGQ3
         IRc5BqU6jCDWgtsfxmOAmgTOzkdyn9MnPkawEfuV6bVWNu0kWv0Ff+tenUZtUI1jmqpZ
         5MoQWslWiDP9o+anPE91n9H53FN+YdDWiZLu8CGzdnWISrgFSLF4eM8Zu4BiPoX7GDFd
         bbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768977528; x=1769582328;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uoVAHLF3EYmcr2exeun9a/uyVZa4cbJ6kjUkolrWsj8=;
        b=AWMCwYme18VT6K583BTmKpmnqnUybfWCZ24fO/nM+qLfvNQ5sSZ481wIQXcwTZC/q0
         522bZPg4vWjS8E1R0X0SeEHGOUuS+rPTftY8EIJ5bqf/LYGFa9YKm0WGHl8t1m38bSzZ
         j3JmwLoNtbeWHM7rEciUG4blKnjxb+iIMx6fUuNYxXPxXPQnCbGJ+iUGgqHyqfhnmW52
         ft0qzz6G+WpZ3GSDHiDQtTW67VdnM6XkjRFnw7P72E/ml97tNCodrjn9N2WveO7Cgios
         3nj4cullb3/objlACoNkoTpS+6a+CeAFxQKuklOi9O33FpqOr1Cv8BIya6CsmtnYibv4
         yKzw==
X-Forwarded-Encrypted: i=1; AJvYcCUZrGePrkIi5NUZx/EXfMam/2rzGhS1/Oz+/xC8v5O4Zk+2h/aH1+D/+1eY68jPHbOTB0/VusLYuKfl@vger.kernel.org
X-Gm-Message-State: AOJu0YzT/80RyzaPyJcoZ3wwVUb2d7gAtR+X3lCGHBGshtWH9xpoUG1N
	PIwk8CU8fSptuf09b36CgHahMuRTSr52AKdxqNiBZJan83xTbS0JnsSDheL4InNS5YMdbNwJHUD
	WWDpixo81NKpBV7y9cD7RTPKw8BXaFSVmjNkFSdTL1hdeEA7n0WeUPvgWnK40W/WQUxWtyd77PV
	ex6x14YAWgd443fCwZnSNSd1CnKX9LH17sJXE5lYY=
X-Gm-Gg: AZuq6aKKovGvEpbG3TQjZzrSuem3jZexBOIexCfQhQfGgnhgwBVd4QWqjHMsJYDDGvY
	IZEG343BydsUyBM/hhwpYig9AfuMMvpkx+AH2l/JlHJxfhzmeTKfxLrFfJ0y0xIDd6v/iD38i7z
	T3Fx23ZNJnm+VxqCgBtn813y4qvxDqE+YLDvcdaskKd2R5/uQNtUU0NIqRPHrq2gKFsOEMtM3Be
	qh590cCdekhYUBLabq2O6NKsNM=
X-Received: by 2002:a17:903:124d:b0:269:7840:de24 with SMTP id d9443c01a7336-2a700a32cd4mr146163935ad.21.1768977527558;
        Tue, 20 Jan 2026 22:38:47 -0800 (PST)
X-Received: by 2002:a17:903:124d:b0:269:7840:de24 with SMTP id
 d9443c01a7336-2a700a32cd4mr146163755ad.21.1768977527043; Tue, 20 Jan 2026
 22:38:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com>
 <20260121055400.937856-3-vijayanand.jitta@oss.qualcomm.com>
 <CAO9ioeXLJK6fvriRA9RZs8cWcBdv4fgw8VG1_LqLDfc-5hFQZQ@mail.gmail.com> <21b3f41a-d480-4eb1-a02e-c2ae411f3dd9@oss.qualcomm.com>
In-Reply-To: <21b3f41a-d480-4eb1-a02e-c2ae411f3dd9@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 08:38:36 +0200
X-Gm-Features: AZwV_QiJlNZEj58i8rePDdx1qSaitOJE_ow44ZEZkiy8ZtWQEH2g-4qzJoIkY9w
Message-ID: <CAO9ioeU8-uQx4cJ=_nPfQ_ZJ=ZUAwwCYrehSqLw5X-YBVnFz3Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] of: factor arguments passed to of_map_id() into a struct
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: PugUKYBo4YRrGg_dRuQtLRbXDoOqCWp8
X-Authority-Analysis: v=2.4 cv=Oa6VzxTY c=1 sm=1 tr=0 ts=69707478 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=TmfMg1Oyh4ahZQCI_-sA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA1MyBTYWx0ZWRfX5r1W503exhIz
 5QXPzanrt7il2sQ9QogQrVjO/0He0B7V0ZMmA3JPyonw1hM5IuC63ivSPPfXpDi2UG3pZzTrRQ4
 drcBj9bF8sOtyWU939xwvJU1fXFuPtsx7ktMU4CaLxe1Y3/iezesfDsBtf7mWyP7RFCma2mG8V6
 A4+vHtvRHohsHMa5GOli4nNj8XFZ8y5odgLjJMIso9t52cK1ZzXiEe5hFCh52TisjIM7WIJY52I
 h/60i0ssM8ysKoebbVrwnaGAthuBC6M7ZPVOKBlWZi0/p8Yilffj9AtRsFpjTx3jsosvuKmvP7U
 t/FA4j+5+ExbWil1gQOYWM9sd2HPiBu9OpBDg1dygozVtcir9OLVgvxulGIS50lQhYoOVEjC+j/
 NoTcYVIG/phqAVijk7W0Zh2fFZK/UftVzGxSULXbO9qKhIEJ9qXLetenPnmc9eNjM4kqU9LmAGh
 B9tS/QY7VXlNCDoaK5A==
X-Proofpoint-GUID: PugUKYBo4YRrGg_dRuQtLRbXDoOqCWp8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210053
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257746-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,mail.gmail.com:mid,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: 53456522DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 21 Jan 2026 at 08:38, Vijayanand Jitta
<vijayanand.jitta@oss.qualcomm.com> wrote:
>
>
>
> On 1/21/2026 11:30 AM, Dmitry Baryshkov wrote:
> > On Wed, 21 Jan 2026 at 07:54, Vijayanand Jitta
> > <vijayanand.jitta@oss.qualcomm.com> wrote:
> >>
> >> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> >>
> >> Introduce a new struct type where the optional arguments passed to
> >> of_map_id() are Currently embedded as of_phandle_args struct.
> >> Subsequent patches add additional arguments to the struct that the
> >> caller expects to be filled of_map_id().
> >
> > Which additional arguments? I don't see anything being added in 3/3 of
> > this series.
> >
> > Can we use of_phandle_args and switch to of_map_id_args when it's
> > actually required.
> >
>
> As mentioned in the cover letter, this change prepares the interface for a
> follow-up series adding multi-map support, which we will be sending out
> shortly and which extends these arguments. Keeping this in place avoids a
> subsequent rework and keeps the overall transition incremental.

Could you please point out patches adding more args.

>
>
> Thanks,
> Vijay
>
> >>
> >> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> >> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> >> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> >> ---
> >>  drivers/cdx/cdx_msi.c                 |  2 +-
> >>  drivers/iommu/of_iommu.c              | 12 ++++++---
> >>  drivers/of/base.c                     | 37 +++++++++++++--------------
> >>  drivers/pci/controller/dwc/pci-imx6.c | 10 ++++++--
> >>  drivers/pci/controller/pcie-apple.c   |  4 ++-
> >>  drivers/xen/grant-dma-ops.c           | 20 +++++++++------
> >>  include/linux/of.h                    | 32 ++++++++++++++++++-----
> >>  7 files changed, 75 insertions(+), 42 deletions(-)
> >>
> >
> >
>


-- 
With best wishes
Dmitry

