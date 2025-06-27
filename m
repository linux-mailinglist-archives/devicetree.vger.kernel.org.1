Return-Path: <devicetree+bounces-190342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66719AEB7A0
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E319E5661B3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C01492D3ED8;
	Fri, 27 Jun 2025 12:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JJ+fTgri"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30EE2C08C2
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027081; cv=none; b=dQFh4CVeznEawt1Fqi8LfVgV2yIpTCZtatcC7th5ma060cDRB2LiRBIuOtm0I2bcqIbdlg3vogxByoQW4nPzS9+FNiXQia+qL+CRnFgWJpcpHY8E1w4ucsX5S5CPUIgAGXKM2fx+q97CW+0WeDzeVtIQcIP0cWB5U70DzSBl22Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027081; c=relaxed/simple;
	bh=s2JsTubzkGX+c2plqsd64lsgphIlEiCTvMimy+JuzV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s1x8TDjni7lYp/AynU8rcAnWsUjD0hs9hnQwxfOMn2CkisrMYolwsdXuhVJwnz69jgx0UvhsWKK8LPE0kElvGUGCq4z+eJHLiQ47tJ+yHVL1YvAY8sxbCKRhl0d0mnWMrNMoLQu2o/IJUChT/jM94cjpiVDWrybbtxMANFUVJLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JJ+fTgri; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCCWZn014518
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:24:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s359VO2c+0FspQeUv43Wc4q+xg59EC18GooK4d2/yKI=; b=JJ+fTgriwz0VWkD4
	TGhjLeT5Fj0T/hdUlqKJxpqS93Kdt55rHzNGtr1voxPIiE+NS/2Jk+ucHeKGkAP0
	jJtSB/OHtE5OoGPDcmPMaE0s+htPTehJNfUutP4vX36IXg4j+fN5Sp1j55bm5ZTy
	hiRkGkaRVkst5tCRpHlTtAr2jQ9P0GlL/XePwNrMohPpxYiJ47bFUD/p19Vf472l
	kv9u5u/ZRnLl0wfeH5W7BxsWO3O/3S38jmVUWbQn0k2p36dq/50+/BXHyBj5OSOo
	Rw8+vMrIqEbYO1skNEx0pso9FKTsKWrTLvnN5EjFzllpKzBjgw4L9kJgUON//uQb
	xOTWCw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcn0ka5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:24:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5ae436badso4247331cf.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751027076; x=1751631876;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s359VO2c+0FspQeUv43Wc4q+xg59EC18GooK4d2/yKI=;
        b=bqwwEwXLeI3uJdhlk6H32vT5HEbqg9h6UCUwp8p6EUMhZ471Kb189VqD/BxbnKOObf
         O+ZjHptuUT2oIUHhVx6oPBY0aIpvSZ6VvNwtp9FLe8Sr31w178wMkCkvTS3sYb5p2dM9
         V3ouC5ETfpPi1LoyBmdtFlarUPOsGdiMMytYKj42rkxxL2TRJkg/HuCFxZpNK9HPiMde
         wr756ferJwQsos67i4WkoZnwDcb/UpbC06x/cUH7Kcd+ytbUX0lrHXs+W4A5Wp+ulTu+
         cHYQXD8u+pas7OYHtJbOxoXfpNCJYTlLNZmaCFqS7r08hnDmZeuidduV1CwZHl3r8kuv
         8dog==
X-Forwarded-Encrypted: i=1; AJvYcCXmGmK9Ey/S3SPpTAXQpO/Z4/euxSnwLasW6Wt1+asbCMDizBRpgnZ6YOnpaYMT+vyK87zvwcaO6PRV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5ZhF0sI+BLk2bAiuBIPXiOrHhRRFq3TE4Jqdl4qJ2hMd2ai9H
	TBdJx3YcdEwIhmUuUl+J3k05pfGOgO+dCU+ddWRb76wNu/JPF2mNleVgKo/dk/wQqOAxLqYtsom
	wp2NPaN9Jeabhi2oeUF1uhpmbVfg8PdTQFItM4S0Jw7p0UqWyN2BVOUE3bmhCkUeZ
X-Gm-Gg: ASbGncu+OhprvhiqcChc+49bVjyULYwmIgpP+4zdgiGNjr3/cW9YP4liipfyJEu59jB
	BNApnG/nDY/ak5kuS+nLpNF2WpUSct1B4Snvo+V2pD88au/6vbgeKZy6mGm2r4fSYmfkedXBgSK
	Srdazrp5S3ZC8/M6Gs9zL7jCZzS2Vi2ww9CHDmz+mBcSgYW+FZJsMWqnNfsitm5tdfJA64YvBTL
	6l/3jIam770LU38twmT94m9//nqmqcoWnOYSg/EyyW2yeysvWGG6hEzWfuGWxgyxFapzvDjObtD
	OreGwVOPia8WNWiY82IvU6y//TbOoDNT/22iQ6DrZI2FT75/V5QzDNeJiTC1ifqHBcRMbvCwtnW
	lnPc=
X-Received: by 2002:a05:620a:4246:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7d44390b20emr177135185a.6.1751027075602;
        Fri, 27 Jun 2025 05:24:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsSUCqkTzzrlWtIzSdcUw7WLmyPY4ovmdYHMj3uG1ti1i0AkcXeiJFafPFnHDPYcpyfxkN5g==
X-Received: by 2002:a05:620a:4246:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7d44390b20emr177132285a.6.1751027074979;
        Fri, 27 Jun 2025 05:24:34 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bfa4sm114300466b.139.2025.06.27.05.24.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:24:34 -0700 (PDT)
Message-ID: <b67baa5a-dab5-4fd4-b789-b1294abcf4bf@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 14:24:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] misc: fastrpc: add support for gdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20250627103319.2883613-1-quic_lxu5@quicinc.com>
 <20250627103319.2883613-5-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627103319.2883613-5-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AmdH6cC2pJKRYf1TcL4lEWUkESiJofVy
X-Proofpoint-ORIG-GUID: AmdH6cC2pJKRYf1TcL4lEWUkESiJofVy
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685e8d85 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=z5t9ctGjsfNMbOfKQ0kA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwMiBTYWx0ZWRfX4861w2saId6F
 Wrf8M0sexzR0Pb3vkKgeGXkG6wE0UrEL1erFQFAfjVveQKut4YPs53eRURej/CBbIbRhfsUYTPI
 QIQbUeSwg9xmmJK2oARO6JJr8PiJMRcSlJjM4mvZzs574d3MffwSbNUpVu6kEmhchgmfa5JTYt+
 oSkqZ4l5ZNOch+P56JDXvC7SehZPx2ztvajcqlbTWluMKFte7Mpn/tvpg6LoZ57uxal48Ix16pK
 AvM79CgTgX661bax3pxBmGC04bFovc0ImLVrrKN+q8tDRs0W3yap+rpfo8kpAr+Ue6CbaqLW1v1
 sNX4y5BUy6KS/WHRpDQr3DrfoI2e24L+NzD0kjtuoQz+wmAfXnEMMMInMyYlV1hTB/kzr9wIKQM
 CYloN97C/uQBvwKvUwmsLVVccoHFETNvAC0Cn3eQHLo6SYL4uvlIUfu9ptTLsOSlJHmt093t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270102

On 6/27/25 12:33 PM, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GDSP remoteprocs. GDSP is General Purpose
> DSP where tasks can be offloaded. This patch extends the driver to
> support GDSP remoteprocs.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c      | 5 ++++-
>  include/uapi/misc/fastrpc.h | 3 ++-
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index cb9f4be286af..d3d9b9fdbf4c 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -2245,6 +2245,8 @@ static int fastrpc_get_domain_id(const char *domain)
>  		return MDSP_DOMAIN_ID;
>  	else if (!strncmp(domain, "sdsp", 4))
>  		return SDSP_DOMAIN_ID;
> +	else if (!strncmp(domain, "gdsp", 4))
> +		return GDSP_DOMAIN_ID;
>  
>  	return -EINVAL;
>  }
> @@ -2319,13 +2321,14 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>  	case ADSP_DOMAIN_ID:
>  	case MDSP_DOMAIN_ID:
>  	case SDSP_DOMAIN_ID:
> -		/* Unsigned PD offloading is only supported on CDSP*/
> +		/* Unsigned PD offloading is only supported on CDSP and GDSP*/

missing space ^

Konrad

