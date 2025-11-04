Return-Path: <devicetree+bounces-234622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42320C2F551
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 06:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E19D189BF33
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 05:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA94028642D;
	Tue,  4 Nov 2025 05:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I78XV9mk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SV5Ad4HU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000ED1DFF0
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 05:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762232642; cv=none; b=stZV4UItrptR7oKqdq6JZ7HLntbJLI8nM4uDzmoKxadEwFL6GKEpNgVfIrKql+3OcjlkQsHQOki0nAEAg+mXU1xeIa8gHN2Pue4xfqAxoJ0CEpFScFjED/vjpYYHwCiKU47xk8VdgJzTevE2/1QjWGBonzXD4k9+x4NNiJy2iEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762232642; c=relaxed/simple;
	bh=7ahORK56Ji+xG3X89Vnujuhts7WNYej9lQCD0HUx3QQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WwJBOcXlZoAV3l/3N/g3OwkGYkcuEXHNbMoDoBW4M4OhyxzjvJd6r6OznqZ2RzT7MxhEvjkMs4SFJzwRVaBjA0ZMDvdBJVuL7QHByzodkhquwJkBXJ9MHDw9GZ4e0aOnLzMTmDgl2v5i3OkYwMvb3lj3jB5nZ6AlETcMz9SozbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I78XV9mk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SV5Ad4HU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A42vIYI3595021
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 05:04:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1lcbXDQCbFGlQ1qumczHxP0u
	BwOAwPqDfJc9RgHWN7Q=; b=I78XV9mknreU+VPqdvJZhXARFXwLPyzdskoZgal1
	IDmo90cjvNmLwLgBNGwsO7j0F6ogiXgxbIAQX040z1oMFF+oYHUKiHHIx/Iff2ak
	Wtv48k+BEtU9GHM+UHq8OCaYLABx0XqeW1D4eDbeFeMYoag2QA58JwiPA2ogEFqn
	ZFJJduvGj3xZCSBxNvk/S4+f2fXCDQC6zi8Gw3UeCWKmB3DEpI7GQe9DR/9hI9zL
	Y/hpINGnlrLKiaJrgrVj2akLIXR8FAsiHDzVVrlmbnxzSIMvFZWO3AjvBkj2vdOT
	55zzx/7uA84x1Dc3FiSaNf/MK8S/x1rXuq6hAp1A6YvaZw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70exhprj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 05:04:00 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29598910dd2so47479435ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 21:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762232639; x=1762837439; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1lcbXDQCbFGlQ1qumczHxP0uBwOAwPqDfJc9RgHWN7Q=;
        b=SV5Ad4HUoU9w8kN57ksZ9iYwhZ8ahNo/4P6my8wXay8SFKDuY+18096PeEc6JiPIIb
         MTGDqljVHAAPnSmRHzMkV8yfyhe6W5XGeW6bYXhSGZ6cvIKRlSWGCp6FvqgjDsPMcoqx
         u3xOyo5jX2+0bsyU9JukWyASYKGNWsPwisV9ek7x4NkWGPUjgRuuwMLSXXm+KAI3AXSo
         zWBQiiwN/oWIYOQF0vruWK1pCK1/Ir8moYd2IhWmy/8FT0ui9CyfCXghM+OP+7dLMpFo
         8tZfKgjeEo9i+fRrfJ8ezLzb34SeJal8l184qBE9nkU09prT6TJDh1Qn5GnNKJXW4jCn
         /GDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762232639; x=1762837439;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lcbXDQCbFGlQ1qumczHxP0uBwOAwPqDfJc9RgHWN7Q=;
        b=gJzswS1j+32w+i2rUcu3YAuDvU73oEEFewW7MrZF8Bbx/JJX1UmD2Cp6iVZYaACx88
         Z93Z08GQoWEqaVBvvadwj2rcnEN5XYzqnvKk1f823AX/4eUe+xEakRmEilWX4WR4UXBf
         q1Lnx/qNL5CCHBASn5qeLzm7jmf4ql0V/LtnMEYwzOXnN4Udklry9vKuyYCrGqpPcWX0
         8IpG6JTul9B6R2pd3xU8cPNmdv4Hm+fyy7aGTKjY5Hpbh9VlxcxX5vgZ+hpn+phUVadc
         GWTjqizLgdhOUKszJ9wwR83l7kFJYwfTAhVAnWJR6H80BvXiP85kd6Q7/XraFvSzSFlF
         7XqA==
X-Forwarded-Encrypted: i=1; AJvYcCXRNvct9/wq9sre+jyEfvNEBYo0tjQX6h+nFMfT5SQdqQ3NfvNyz3xHzLxZM40ZTdLa8xvTB5r6TKXq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0UTpQRTszhT/O2RMI/e71J6fQ66NIwUrZvQdIwy6GmVfjTLNK
	4DB1U4KIsIIsWyEoxL4qNgAMssQSPazCb9ZDgsjvCISZFgX+TAUMn/ny3b2tTOnYarnVeeIwvVt
	B01TDkDrZkFoVhix/WmTCMeW9WDX16ypQnNIU0ckTQzC1j7/vXxTw3Asni75PYVrs
X-Gm-Gg: ASbGnctEKi6JoOZC168j7NpfpJURD7h3k+5LyFwAfLL7Kepr170f8NNv2xMfEX+v25G
	5xyYlotn5m1nBTgROrwvoGn03WVGRZyOwo25Hi815qD0+9TGeu0ZvY9U0f66YVVZip4Os0ULjdY
	BFGliWvVUX2lUaCqHnKcl3CW6qqihwo5vNHcZ1LgiWG67b1obv7j3aF64mulgtYbSMpfOhN6rrK
	+ZDCYK9X0mDiYGY+lovWae1DdMSDRj+9B3W/LYQ9d9Q1IVeosY53H4swkyU8i/iddQ7G5CSUnHN
	lBEnd/SarWEClSD40zMFCOQraDzVlEX7GMqWLiZYwJEptw2piGwOPAP824SBA16LLNiclkvT4Gm
	7UFF2oPcmNkukchDjUHZbDxJ+sxAkxWGf
X-Received: by 2002:a17:902:ea0e:b0:273:ab5f:a507 with SMTP id d9443c01a7336-2951a3e6136mr219334905ad.21.1762232639453;
        Mon, 03 Nov 2025 21:03:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFXmDw/J8solbX98U9JGXASqPQ7jI05mi4jRrsOQx95DzTgD/uBh8QIFNA96fGs16AgEAxB7A==
X-Received: by 2002:a17:902:ea0e:b0:273:ab5f:a507 with SMTP id d9443c01a7336-2951a3e6136mr219334525ad.21.1762232638744;
        Mon, 03 Nov 2025 21:03:58 -0800 (PST)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998671sm10391285ad.35.2025.11.03.21.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 21:03:58 -0800 (PST)
Date: Tue, 4 Nov 2025 10:33:52 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 1/2] soc: qcom: smem: Register gunyah watchdog device
Message-ID: <2ef1d795-5cdd-4465-9333-16a02207a806@quicinc.com>
References: <20251031-gunyah_watchdog-v4-0-7abb1ee11315@oss.qualcomm.com>
 <20251031-gunyah_watchdog-v4-1-7abb1ee11315@oss.qualcomm.com>
 <nnq34bfbbi3satxiqzaouy5pgi3obyqp76avh2ipyqxx6w67td@e7eqehjq7iww>
 <40a6395e-26f6-4bad-88af-d89479b6fc28@oss.qualcomm.com>
 <abicharluq6bm7gbngkbdc2hobcfifcmazh7oukcoufsrpcpse@ml2wccwe6s7i>
 <599188b5-cd2e-4667-a91d-04cbdd62cecb@quicinc.com>
 <ykg7mwgncmvdap6xzyhmgxu6ur62zzfk5nd3tqrkivugn4w474@rkazrlhwbhtj>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ykg7mwgncmvdap6xzyhmgxu6ur62zzfk5nd3tqrkivugn4w474@rkazrlhwbhtj>
X-Authority-Analysis: v=2.4 cv=APHuRV3Y c=1 sm=1 tr=0 ts=69098940 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=yMhMjlubAAAA:8 a=EUspDBNiAAAA:8
 a=NmRg-prKhgx6galY42cA:9 a=CjuIK1q_8ugA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 0A9TsNalPcN9vbkNdDrY1YGOB0nDoIKS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAzOSBTYWx0ZWRfX+nzn/vJS1veG
 dQiUIR4gvIKHxF3bKeRbQQ3hCzBuedvWN3d1x0Y85qJ9wOtHilkdX8C+l8/2T3JVohejxWHnaYQ
 bwLKlLgLJrVPlJWI4+ofod8fQ3d4MF/ELQKMqNxENzA4Nn4yL7uDPD/bgqqmJ5aO9Pb2S1Y4Iym
 Po1/+zy/pLRNPpg50Ov14IdUNNIPmcxBDuvTBmsw2qlAlZoCEPuu6nJoWWZQXEmCs+/dXdhjr81
 R+tdE6D5zC5bGWRdmBlqVFrw5nU3F4tI+GAuqrUasLwCeI0A9m0J+Rkqn70lyuwHqOQRWv9k8jJ
 f3urSUqnhl7lQt5yZq2NIDe1DKLc+OQPfcM55vS5EHGjZb8Wm73Lz+e+6Xw1MvVUmtyUQFd7fSA
 9+tSoLjVMif1MgsJO8B2nQ1t9CfP0g==
X-Proofpoint-ORIG-GUID: 0A9TsNalPcN9vbkNdDrY1YGOB0nDoIKS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040039

On Mon, Nov 03, 2025 at 09:52:25PM -0600, Bjorn Andersson wrote:
> On Tue, Nov 04, 2025 at 09:00:27AM +0530, Pavan Kondeti wrote:
> > On Mon, Nov 03, 2025 at 07:01:51PM -0600, Bjorn Andersson wrote:
> > > On Mon, Nov 03, 2025 at 04:03:44PM +0530, Hrishabh Rajput wrote:
> > > > 
> > > > On 11/2/2025 12:15 AM, Bjorn Andersson wrote:
> > > > > On Fri, Oct 31, 2025 at 10:18:13AM +0000, Hrishabh Rajput via B4 Relay wrote:
> > > > > > From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> > > > > > 
> > > > > > To restrict gunyah watchdog initialization to Qualcomm platforms,
> > > > > > register the watchdog device in the SMEM driver.
> > > > > > 
> > > > > > When Gunyah is not present or Gunyah emulates MMIO-based
> > > > > > watchdog, we expect Qualcomm watchdog or ARM SBSA watchdog device to be
> > > > > > present in the devicetree. If none of these device nodes are detected,
> > > > > > we register the SMC-based Gunyah watchdog device.
> > > > > > 
> > > > > > Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> > > > > > ---
> > > > > >   drivers/soc/qcom/smem.c | 37 +++++++++++++++++++++++++++++++++++++
> > > > > >   1 file changed, 37 insertions(+)
> > > > > > 
> > > > > > diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
> > > > > > index cf425930539e..40e4749fab02 100644
> > > > > > --- a/drivers/soc/qcom/smem.c
> > > > > > +++ b/drivers/soc/qcom/smem.c
> > > > > > @@ -1118,6 +1118,34 @@ static int qcom_smem_resolve_mem(struct qcom_smem *smem, const char *name,
> > > > > >   	return 0;
> > > > > >   }
> > > > > > +static int register_gunyah_wdt_device(void)
> > > > > > +{
> > > > > > +	struct platform_device *gunyah_wdt_dev;
> > > > > > +	struct device_node *np;
> > > > > > +
> > > > > > +	/*
> > > > > > +	 * When Gunyah is not present or Gunyah is emulating a memory-mapped
> > > > > > +	 * watchdog, either of Qualcomm watchdog or ARM SBSA watchdog will be
> > > > > > +	 * present. Skip initialization of SMC-based Gunyah watchdog if that is
> > > > > > +	 * the case.
> > > > > E.g. qcom-apq8064.dtsi doesn't define either qcom,kpss-wdt, nor
> > > > > arm,sbsa-gwdt, does that imply that it implements the Gunyah watchdog?
> > > > 
> > > > 
> > > > It doesn't implement Gunyah watchdog. For platforms like these we've kept a
> > > > STATUS SMC call in the gunyah_wdt_probe().
> > > > 
> > > 
> > > I think it would be good to make that call before registering the
> > > platform driver.
> > 
> > Did you mean platform device here? Becase we don't want the gunayh-wdt
> > module to do anything other than registering the platform driver on
> > platforms other than qcom.
> > 
> 
> Yes, device, not driver.
> 
> So in SCM driver (I think that's a better match than SMEM), do a:
>   if (are_we_running_under_gunyah())
>     platform_device_register(gunya-wdt);
> 
> The Gunyah WDT _driver_ should based on that be autoloaded by the
> platform:gunyah-wdt alias.

Thanks for the clarification.

> 
> > > 
> > > > The SMC Call is expected to fail on platforms which do not have support for
> > > > SMC based Gunyah watchdog, which in turn will fail the probe.
> > > > 
> > > 
> > > Perhaps I'm missing something, just looked quickly and it's been a while
> > > since I looked at this code, but you're making a HVC (or SMC) call with
> > > the function:
> > > 
> > >   ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32, ARM_SMCCC_OWNER_VENDOR_HYP, 6)
> > > 
> > > which doesn't look unique to Gunyah in my eyes.
> > > 
> > > If I read correctly, the ARM_SMCCC_SMC_32 is the only bit (literally)
> > > that differentiates this from being a __vgic_v3_get_gic_config() call in
> > > KVM, just as an example.
> > > 
> > 
> > Yes, you are right. This SMCC falls under ARM_SMCCC_OWNER_VENDOR_HYP
> > space, so it would behave differently on different hypervisors.
> > 
> > Please let me know what you think about this **defensive** approach.
> > 
> > - Move the Gunyah platform device registration to SCM driver.
> > - Checks to be done before registering the device
> >   - Make ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID SMC [1] to verify that we are
> >     running under gunyah
> >   - check for the other wdt devices like kpss, sbsa in dT
> > 
> > ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID SMC will not be supported by all
> > versions of Gunyah, but atleast it would confirm the definitive presence
> > of Gunyah.
> > 
> 
> Yes, this looks good.
> 

Thanks, I think QCM SCM driver hosting this would be a good idea.

> I presume if we determine that Gunyah is present, and we haven't put
> sbsa wdt in place (e.g. during bringup) Gunyah and Gunyah WDT will
> handle the outcome gracefully...
> 
Yes, we are told Gunyah support SMCC based WDT even if it emulates
SBSA. Most importantly, we have STATUS SMC in gunyah-wdt probe before
registering the watchdog device.

The following two patches which merged recently will make the above
implementation simpler. Providing them here for the reference material
for v5.

- arm_smccc_hypervisor_has_uuid() API addition from
https://lore.kernel.org/all/20250428210742.435282-2-romank@linux.microsoft.com/
Please note that recent commit make this API available for SMC conduit
as well.

- qcom_scm_qtee_init() example from 
https://lore.kernel.org/all/20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-2-17f07a942b8d@oss.qualcomm.com/

Thanks,
Pavan

