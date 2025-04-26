Return-Path: <devicetree+bounces-171166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5CEA9D9E3
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 11:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F0587AB05E
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 09:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 750912222C0;
	Sat, 26 Apr 2025 09:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bv87gcBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E665D1FDA8C
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 09:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745660961; cv=none; b=Ky18NbpjCQVno1I7VzEuM2NOl4VD0dO9Uf6nPWr63jXApnxSzkab6b2AmsHA/rGIgGaIYZuJaE9dDCqjcG3wp9IDRZYga3RgZYaI2zH3zc7UU440fZEbDUzdrdPpxDgYw9KV3xcETvM8w+qeIiiDmzpmxzr6nwDNMsv9yqa/FdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745660961; c=relaxed/simple;
	bh=B8EgtZ28fzm2eefGDxmnFqlqJAmYimcdMeMTIQBGAqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=E5lrTDvkmc++tryFXuU5cls7837dPsDShxyhWv0Rv9eUE0JrOJlfuxSxXsGFpqswALmg4rYnShgDbwPz4uEwPdRXLQOirUF+zUPAOr41PLEzcYslVJv6XfFplSmgxi425XaCPf1k1vIG2PklwgTtvO8tL722ggz0HvOWir4zkGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bv87gcBW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q4dn7U016103
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 09:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aeBovqy5swxjnYwF2GUPObcG6Yg58Cf28ut61KxKi3Y=; b=Bv87gcBWNT9PnyUu
	ivmrPliji2D9S0zlNTIL91oCYu45mgjzDGobQHSWw89j2sdSPsnk9lWfh45X3fUj
	L+HIe9fLSL1S0uwAkEksrPl2xdqTSUuKxrBcSkxZwtTACKS5hEI+ttsVpp3Rhw38
	QJYTzeg7pNYrce6935EeuvwYKkRDVQriYi8thj9krf7Zg/QBqjtc8+xA2oDFSlVU
	91zldgyAprr6v5zmqPEorzzfC3QkA5i+50XPgY0cxAZxesqGkmY8E8iKCPE/7y9u
	t7NMGqYNpcE+yY5Pj7hswZAcY6DZlODuLSbV2q8aaqXuoLrh+GWLcyjz7Gy5FoY4
	jcfeXg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rnmrn8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 09:49:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54be4b03aso65742985a.3
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 02:49:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745660957; x=1746265757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aeBovqy5swxjnYwF2GUPObcG6Yg58Cf28ut61KxKi3Y=;
        b=YPli52O+ViDAkfTZ3qOMoalnTob5YchxjBeUOl81O4fGfy6l2gsq4714a9xYlI7mQB
         hP7nD9dMNTze1c4zxPvTjjvgFxUB8y0Oz5/Snm5xvXJBymuCfDP9zVhbSzl/FPnwNvRd
         mxsyYhD1yK3gmOufiMPQ2Kq4EcyIMgkCJ7gKJyBZNrGPo2wHiYyojtU/th3YrH1ESCX2
         mZXnbEuafRMEUzNQyzbvI76it5PUH5KBVy+zQbRcBeZDBnfXDnXA1fKT0TYTnRVIm3hU
         FbBxfCCXPn/t8zMLhhRsQcyPkzUfEhiUraYj3RFUTEiw+fuHLP7o1rzJRNPrHykE90As
         zOKA==
X-Forwarded-Encrypted: i=1; AJvYcCUryosSvXdCQxbwv0nenw24HUdVVgTroRqa3VFpSMlfFczNFHV/F3T8K3dqvglaJdb7ZRWNGTcBwdIf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6kB9iWQPSqToYNHugbNxZHTr/ASe+bGfni2HSd4bsoBx1rE1F
	yKUNhQ5mS1/GWEK1IGcKAprxYECdJv+ftRp3YJ0Eb2HF6O5NUfDA27qBxdP0TW8hKj11dEyNlE4
	j6eNyCkCiMjggB3Z5BmfUmXoef+AgcU+vj3U33H+cNDON3y8GYzxbo2w8WjCZ
X-Gm-Gg: ASbGncv/ncOMfOSVppRWpJnaEp9LAyyIZvFB/EIESmnZ5c70ZTNE+LNl1vPSDBV/IoO
	ZLsnSmholQAFJh0XGJoWzUSwIc+zT/08pmRTy/iAkhrTyeFtR+1cLKLAo/Wnv2NpBgyzoRFKKxu
	BOMXQrvleKOdm4mVB/VT1FdfqAD4VYJ/wwRZgYp8UGJn21/nV9KlK+qxeUIHNzdVhsmdcqonQxS
	hseOzOgIplyuDVdN7x0ZdYGjF5fHWl8wLPx3ph3mYYtCaDZd2XOAiA9beP2os/YZq4qYtRYQ0RH
	zR7lyXHunrPH8wt2gLMw9CIXc731nzDCwylEHIvLJVhSwYRIM0fE7RJ5GiLmOz3yPZ0=
X-Received: by 2002:a05:620a:319e:b0:7c0:9dc9:754b with SMTP id af79cd13be357-7c96054ba7cmr323496085a.0.1745660957605;
        Sat, 26 Apr 2025 02:49:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0QwLs2ir/PN1N5iqv5F0Lv4U72x8845jtF7TxG3fWASOplWiGCjdLlSOzZl2mG5wF3zAQtg==
X-Received: by 2002:a05:620a:319e:b0:7c0:9dc9:754b with SMTP id af79cd13be357-7c96054ba7cmr323494785a.0.1745660957096;
        Sat, 26 Apr 2025 02:49:17 -0700 (PDT)
Received: from [192.168.65.154] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edae042sm261565166b.169.2025.04.26.02.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 02:49:16 -0700 (PDT)
Message-ID: <6b6a163b-be75-4003-a618-f0e928a6d114@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 11:49:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 2/2] mailbox: tmelite-qmp: Introduce TMEL QMP mailbox
 driver
To: Sricharan R <quic_srichara@quicinc.com>, jassisinghbrar@gmail.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, manivannan.sadhasivam@linaro.org,
        dmitry.baryshkov@linaro.org
References: <20250327181750.3733881-1-quic_srichara@quicinc.com>
 <20250327181750.3733881-3-quic_srichara@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250327181750.3733881-3-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: YI6R0ET3QxXTwEDdko3PJGG4bIjfDBHC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA2NSBTYWx0ZWRfX706Br27PVAlL 3E74iF/QSCXqfjDCK2R2TVa2gzTpJU3ZpUB344fvMOWmHO+GGVy6UL99Jlq0URt89U6fwb90tZf m+9iHbiraZHvzE7RwNwfe/9xwMeZiRkW0iXwCzS0GWyE4CVLycwAzzDUcs1AF9NRFsWpZoQ0W09
 IUGZbWwmhzBIhPa+qBD5ponCAwrWWyB1SBLt28agayWTDW4XXdlR8dD8NXHLJLB8P7snNTFbMfr giTO1ad1b0JcDjcuQOA8ncPBRe6PMFNyK3qbB6Lnypf8uBuyR8Nn6TpoWRJoJpIfvhZpaFcTtsM HjlPafdDfBz6KxzcwMkruH3O2JqPoflk0+CE69iZIj30ygHa71RDu1wJs+GwFYQW0N2W8KLD5SU
 Gza8ucm5FHLe2+xvKqqOZwBvnVgEI5/8K7L9QC9dV4XAoqw/kXoTBJwWN1XWD1sH4s2fyzPB
X-Proofpoint-GUID: YI6R0ET3QxXTwEDdko3PJGG4bIjfDBHC
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=680cac1e cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=LmtxcP_z-R2aA1YV_JkA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 mlxscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260065

On 3/27/25 7:17 PM, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> This mailbox facilitates the communication between the TMEL server
> subsystem (Trust Management Engine Lite) and the TMEL client
> (APPSS/BTSS/AUDIOSS), used for secure services like secure image
> authentication, enable/disable efuses, crypto services etc. Each client in
> the SoC has its own block of message RAM and IRQ for communication with the
> TMEL SS. The protocol used to communicate in the message RAM is known as
> Qualcomm Messaging Protocol (QMP).
> 
> Remote proc driver subscribes to this mailbox and uses the
> mbox_send_message to use TMEL to securely authenticate/teardown the images.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---

[...]

> +
> +#define QMP_NUM_CHANS		0x1

Quantities make more sense in decimal, but since this is effectively
a single-use value, you can put in the '1' literal in num_chans and use
devm_kzalloc instead of devm_kcalloc in the other use

> +#define QMP_TOUT_MS		1000

"TIMEOUT"

> +#define QMP_CTRL_DATA_SIZE	4
> +#define QMP_MAX_PKT_SIZE	0x18

This is very handwavy, please structurize all data that comes in and
out of the mailbox.

> +#define QMP_UCORE_DESC_OFFSET	0x1000
> +#define QMP_SEND_TIMEOUT	30000

Please include the unit in the macro name - although 30s is quite a
timeout for a couple bytes..

[...]

> +#define QMP_HW_MBOX_SIZE		32
> +#define QMP_MBOX_RSV_SIZE		4
> +#define QMP_MBOX_IPC_PACKET_SIZE	(QMP_HW_MBOX_SIZE - QMP_CTRL_DATA_SIZE - QMP_MBOX_RSV_SIZE)
> +#define QMP_MBOX_IPC_MAX_PARAMS		5
> +
> +#define QMP_MAX_PARAM_IN_PARAM_ID	14
> +#define QMP_PARAM_CNT_FOR_OUTBUF	3
> +#define QMP_SRAM_IPC_MAX_PARAMS		(QMP_MAX_PARAM_IN_PARAM_ID * QMP_PARAM_CNT_FOR_OUTBUF)
> +#define QMP_SRAM_IPC_MAX_BUF_SIZE	(QMP_SRAM_IPC_MAX_PARAMS * sizeof(u32))

These should be expressed in terms of structures and sizeof() instead,
as well

> +
> +#define TMEL_ERROR_GENERIC		(0x1u)
> +#define TMEL_ERROR_NOT_SUPPORTED	(0x2u)
> +#define TMEL_ERROR_BAD_PARAMETER	(0x3u)
> +#define TMEL_ERROR_BAD_MESSAGE		(0x4u)
> +#define TMEL_ERROR_BAD_ADDRESS		(0x5u)
> +#define TMEL_ERROR_TMELCOM_FAILURE	(0x6u)
> +#define TMEL_ERROR_TMEL_BUSY		(0x7u)

Oh I didn't notice this during the first review.. I assume these are
returned by the mbox. Please create a dictionary such as:

u32 tmel_error_dict[] = {
	[TMEL_ERROR_GENERIC] = EINVAL,
	[TMEL_ERROR_NOT_SUPPORTED] = EOPNOTSUPP
	...
};

that we can then plug into the function down below that currently does
error ? -EINVAL : 0

Konrad

