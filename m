Return-Path: <devicetree+bounces-159691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31465A6BC90
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3748C4639FB
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5F078F29;
	Fri, 21 Mar 2025 14:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y5FFyDMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E7978F52
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566037; cv=none; b=o0mIaAgi7wSkbQFNzQaCQ0k9ZkdtuDuedxzf76BmS9yTl2H99sYpTKF6cthQ10ZGeHhGmvcpHuxKwCVuZjCIwdIanPxltPwvDIBORYm6glWEaRUBZ/Wlb3fO6jDRYCzAANnPQp8p+A6+trHCLbQ/gLZc3GnTI3TmfH2tf8mZ/vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566037; c=relaxed/simple;
	bh=e/XWsyI6BYdyPdl0XA1XeIvspxRAYhIZaXUiTyMFzjw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A0ucAe3cbQQx+4C7TkswCtXqLrP3zKmEwkCTnJAXYqWqdFSkizr+KLEKJJKLSuo3ERM8w/6YOXnurXzgdxlfUZY186aIdrq9WBc+8J7vG644eBRGmy2xkMX+Vc2DZxeq4tbCSCeOSEJ1co+MfaIR8rzPaU6q1eeh3ce4dT/+624=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y5FFyDMu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATL6p001141
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:07:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n4dOWXKC6mPXFjDpSYZ/WJvo
	CSfdzk/j2GPOhCYKVDY=; b=Y5FFyDMuplv32vbJvmFlofNE24HcYZWtCbdB9PuP
	bY5dwKhHIUY/GcnqQhj6bH7Dvl2SngTIDpv1h4VbinxQDuuBIT/Jmg6TiP75ozfz
	qmjQSCRr/tCYSKEazwyICdKwwhOU2nG8riMoCPOswFdnY4ZWXNX1DcziyankEY5K
	3NgNK/iK6600o+5oA5IeVMk5j+HLCKyisUQCezbAiOBl9dyj43MHJ3UF05jhn34k
	NrPsDQxH8JQTiLIRZ6RmEKYg8snGFsfJ3l9ZL/+W0qWuu9XVlru/HSERl5VGNHDp
	0zE7o+smmzQQR8SobtgH610Cn1q3vO7Zv5TNgssHrgtqrQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h4u9rway-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:07:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c3cbb51f03so366493785a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:07:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566030; x=1743170830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4dOWXKC6mPXFjDpSYZ/WJvoCSfdzk/j2GPOhCYKVDY=;
        b=OvJZyk2u0/ZtZNnarLRQsjbyAkD/aHur2tsa9j9e4ETTxmKq5MlM1pjkAeYMvvk6pa
         LqLGrhKgLdnmVFFGfZYKC4fz775OmBOKTGqHU8bE0ztDDTLYB9q5fZgLMlZyjrLwIcFN
         M71Hl3/dnObWwUmvDyjdm5ei2IyRyJ8PjDPanFDgYzT4vNMWTPyfmxccks/AsAcG6OP+
         DZzQd+Z997s9pI1HFqKCSw9JUXHoPMjBy0dAQcg5lb+nfTk+7kcBATwrkuCq5yoHGp92
         aOGsl0qsvve4VAr7/KdT3jf/JsZmzLw6jIssMToCkVnMqBc8vXU5M+Kn8VzDZO40nUX5
         dRhQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5gnWPGIAeCEKIND8a6dV+aD4tR1axiCX1nbao+Ot5e7Gm7h/BEq0BECHOEzdJBLgP188BHbhauQGu@vger.kernel.org
X-Gm-Message-State: AOJu0YxxT20CMIoFwRooX1IuKKd1ssYWMQjmTJrT5c1U3qxoMzlzpMlG
	Ru3eORe+APF8wk6vZ8I6+tXOgagN5Ecmr6Fppe6fgxjlKGgt/4fdZdbadR7EsRnENMRGvknpMUb
	xH4z7GMmKKcBswSL/kFMNzAvNiT/3Svqy4dw7ll4wdcr3q/xlbFB351oQ7c8w
X-Gm-Gg: ASbGncuOYiqZ4Zyc7xmUDxbu1bZeQFiWNSNa/d3Mz/DTbRu3qqwIdhbwu65rfupy6xz
	gWbpF/2Qx1gFKZiVAoMGzduKrY6hIQYIfw+7rDikqEB9+iYcg8j0c4wS3Vrfn7+r6JVQtz5Fduw
	nvd9X1HZttSsE5PAjKe4dt9epdjQgKVcPNfEFsM7zA4h5AKGr8v3WAU4bUpdqENYvTPKtZPB9Gq
	v38wRiTUwwT+gGNzVqhWdW0xRp7Hoa/CaxuBVqiCBT7rh+ktAf5Q4zuafrO9XGJmcWQyuSO3MUV
	LV99p/kt/98Sj5Z6QtXTdd7MkRzawBoF74OVOchRDfe6ZofylBhK/kwG5Z8x8pfHHo2UDYm7xRG
	Jj0w=
X-Received: by 2002:a05:620a:40c7:b0:7c5:57e6:ee87 with SMTP id af79cd13be357-7c5ba1e41abmr470564885a.41.1742566030511;
        Fri, 21 Mar 2025 07:07:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCTJNsCfV0EF8Epu2f1YteJvCUL+F4ENn0D4b3RmEfnwrm5SjF78ayOE8NAWz/4oqCHm/szg==
X-Received: by 2002:a05:620a:40c7:b0:7c5:57e6:ee87 with SMTP id af79cd13be357-7c5ba1e41abmr470561485a.41.1742566030053;
        Fri, 21 Mar 2025 07:07:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbbcesm194858e87.155.2025.03.21.07.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:07:09 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:07:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
        gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
Message-ID: <5r72xrv5rtw6bemh5onygkroyasroviijlta4hvwgm5c5hzvax@3icylchlufu3>
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
 <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
X-Proofpoint-ORIG-GUID: jUhxOdnGkCbtM7220sB6zvTxqHq6dIRp
X-Authority-Analysis: v=2.4 cv=FYE3xI+6 c=1 sm=1 tr=0 ts=67dd7292 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=5a3lCsJK5BcCjL_2EzoA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: jUhxOdnGkCbtM7220sB6zvTxqHq6dIRp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 spamscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210103

On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 20/03/2025 09:14, Ling Xu wrote:
> > The fastrpc driver has support for 5 types of remoteprocs. There are
> > some products which support GPDSP remoteprocs. Add changes to support
> > GPDSP remoteprocs.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> > ---
> >   drivers/misc/fastrpc.c | 10 ++++++++--
> >   1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> > index 7b7a22c91fe4..80aa554b3042 100644
> > --- a/drivers/misc/fastrpc.c
> > +++ b/drivers/misc/fastrpc.c
> > @@ -28,7 +28,9 @@
> >   #define SDSP_DOMAIN_ID (2)
> >   #define CDSP_DOMAIN_ID (3)
> >   #define CDSP1_DOMAIN_ID (4)
> > -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
> > +#define GDSP0_DOMAIN_ID (5)
> > +#define GDSP1_DOMAIN_ID (6)
> 
> We have already made the driver look silly here, Lets not add domain ids for
> each instance, which is not a scalable.
> 
> Domain ids are strictly for a domain not each instance.
> 
> 
> > +#define FASTRPC_DEV_MAX		7 /* adsp, mdsp, slpi, cdsp, cdsp1, gdsp0, gdsp1 */
> >   #define FASTRPC_MAX_SESSIONS	14
> >   #define FASTRPC_MAX_VMIDS	16
> >   #define FASTRPC_ALIGN		128
> > @@ -107,7 +109,9 @@
> >   #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
> >   static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
> > -						"sdsp", "cdsp", "cdsp1" };
> > +						"sdsp", "cdsp",
> > +						"cdsp1", "gdsp0",
> > +						"gdsp1" };
> >   struct fastrpc_phy_page {
> >   	u64 addr;		/* physical address */
> >   	u64 size;		/* size of contiguous region */
> > @@ -2338,6 +2342,8 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
> >   		break;
> >   	case CDSP_DOMAIN_ID:
> >   	case CDSP1_DOMAIN_ID:
> > +	case GDSP0_DOMAIN_ID:
> > +	case GDSP1_DOMAIN_ID:
> >   		data->unsigned_support = true;
> >   		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
> >   		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
> 
> 
> Can you try this patch: only compile tested.
> 
> ---------------------------------->cut<---------------------------------------
> From 3f8607557162e16673b26fa253d11cafdc4444cf Mon Sep 17 00:00:00 2001
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Date: Thu, 20 Mar 2025 17:07:05 +0000
> Subject: [PATCH] misc: fastrpc: cleanup the domain names
> 
> Currently the domain ids are added for each instance of domain, this is
> totally not scalable approch.
> 
> Clean this mess and create domain ids for only domains not its
> instances.
> This patch also moves the domain ids to uapi header as this is required
> for FASTRPC_IOCTL_GET_DSP_INFO ioctl.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  drivers/misc/fastrpc.c      | 45 ++++++++++++++++++++-----------------
>  include/uapi/misc/fastrpc.h |  7 ++++++
>  2 files changed, 32 insertions(+), 20 deletions(-)
> 


> diff --git a/include/uapi/misc/fastrpc.h b/include/uapi/misc/fastrpc.h
> index f33d914d8f46..89516abd258f 100644
> --- a/include/uapi/misc/fastrpc.h
> +++ b/include/uapi/misc/fastrpc.h
> @@ -133,6 +133,13 @@ struct fastrpc_mem_unmap {
>  	__s32 reserved[5];
>  };
> 
> +#define ADSP_DOMAIN_ID (0)
> +#define MDSP_DOMAIN_ID (1)
> +#define SDSP_DOMAIN_ID (2)
> +#define CDSP_DOMAIN_ID (3)
> +#define GDSP_DOMAIN_ID (4)

Why are you adding these to uAPI? How are they going to be used by the
userspace?

> +
> +#define FASTRPC_DOMAIN_MAX	4
>  struct fastrpc_ioctl_capability {
>  	__u32 domain;
>  	__u32 attribute_id;
> -- 
> 2.25.1
> 
> 
> ---------------------------------->cut<---------------------------------------

-- 
With best wishes
Dmitry

