Return-Path: <devicetree+bounces-257772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDU4HaKEcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB925303B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8C070405A4A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C6B428468;
	Wed, 21 Jan 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D80a4ULT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RtUtURxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E1D33C515
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768981653; cv=none; b=KJYz1v+AKosDhdaQvpd+hJomGJql/1W0bpNy9dQiZviglDg+ySl9FWpQl5lXieAblCrTx3UFpyQe/UYncUNbQirdR+Vd4ILIssUwViKV/noizsUE7t5eJ5oKF8PG8Q+8yoU2dr15YWdcWfVspRTRI9NEnMbniGgFbOCXoIUuA1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768981653; c=relaxed/simple;
	bh=OsLO1copfDI7UNXhjs/8qoFniZASEhHK4kjvMKyUMCs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eIRZuvGMZiwBsr06tSLGH33ACzFUus5Ctpe9NAZn1uXs9zCYxcd4VmkQMTCbiCtgOKkYg5HSeLuXVA1qW2FilfDup7JERR5HrsWHrWRg3ymkte1Ebwphlt+1JtdPsvbmUYsHQ7KDlg/zyJd7ar+HmqcznjP3n+etxxXGQhFQYZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D80a4ULT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RtUtURxE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L2UQV6314360
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:47:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dI6CvH/K4XzoB9yWVh3TUf4YLFRgJueU93szPqG5mj8=; b=D80a4ULTQyD3gadB
	WRRw+iTkowqWvuORR9hXNYy2tYZPG1LiPasmeVfFBrKBqLT7V5gpLarOx8XxtxF0
	SEM4mS7SAC71ebvtNzyGls0Ss4E2wEhn1Xx/kM2fdtt8ErTkmR2lj+2fFvCp/zox
	3KTWim0BNjAsqsmgiFgA8VCz94lbjtElh4K24jKMKczjQ8b0MTKCvUQfIV8Kguo9
	yAiaQcUw8Njs2U5F1L52z86cNgjxGHu0D5xc4bZ1AiuznOcU0mrSUU1Bk6gryk9Y
	bimScwAH5ynHOfGJsVV35/yZymlOba3YO2U5tkzd58ur5FhmpPbtMYhaL2SFGvRt
	cBYhRA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btdw2as11-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:47:30 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c5859a38213so3463748a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768981649; x=1769586449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dI6CvH/K4XzoB9yWVh3TUf4YLFRgJueU93szPqG5mj8=;
        b=RtUtURxEXonLNUMyFbD9foOs5p8EJf4iadzM/i3sBQYuLFhV8dXusNti/28QRNfvuV
         opwMj5eHkLwFscNaOyI+nGR9Br246ntN7A15kSm8nTtJwh3fdirM0+nsSQT+JyQLLO6D
         xfrSOKmihk9Pi49icvdjUkYUQLXJQK5zE/ptlYj+341fLolmXHjWs48LbK9wAQ8So6jK
         uo2C2IFU0c23j/zx45hsPXU9eZe69oGbLbytn52VpBe72NC+sxZEhpE2vAZ8iz6rfLDK
         a4wp36uOTPQGhneFVeYMWKzI36MRE2wrjOEevHYgn3Bs704iVwXGKalMxal1nQu+pm4A
         r0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768981649; x=1769586449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dI6CvH/K4XzoB9yWVh3TUf4YLFRgJueU93szPqG5mj8=;
        b=PEsBpDPKBebp84r9L5Zs3NPN1n/CUIYEH4EhsXEWSGJo/+CCiO53El2EwThxIeMWs7
         JBacN0bmuY4M5ePpU6wIS7p4JkZczZRvVisveSAQmmGchb+be2wpo6Qel++OjumhRC0S
         6SVoasgm2YLOGGvJCUtacXQav/X+q+yq7oRGXrimb5BsbT22kFIxWynuvfcmUuCzME7E
         qgCjpcUVlWPK7T4lgDFnshq0p3hJHT5fjsbEa+Gly5UhcXsPJ/JOXbDhj8/MoJ/4cQKV
         /XL9OqDVVSjMoi7YdTIGRxFvkLdYK9EljybeMmGlrWNOPtSasxSFolFaAzYXKKiZOXct
         oX8w==
X-Forwarded-Encrypted: i=1; AJvYcCX2F5IzP/HhUT4mVGALWo8IvOhNs6t+3MVO1wk+cEPUUJUpfeM1IwMec5X0/MUhlUQAWe0/Xak4KxO/@vger.kernel.org
X-Gm-Message-State: AOJu0YxcBlN2x0vkqVfbFKDLH3RNRj8skU8KCIuSHzuwa4cCjqwzRKpg
	MtaVXAWHcDo3GlHkfWXqkUXAhTOA+jXrWY3YzMag4XMHBGj+Xpmp7gM0k4chyqW8nv9jeRKcuGz
	J0OxS85eJi4lbrA8NUC7vY4Zoz4AdLhbmOKqQjyFTJM1EtQbz8yhTePmt7NlAflhO
X-Gm-Gg: AZuq6aLOpEXu61qwuGcMfdjYr4ND4eJ5fFDPbIleFuV9omIVZI8EmkjvF0jEmbVswWq
	8I8BbcCcXBS1yXUhbLRfgcYGmXYrzUds2otvH6ZwxfJ4bd/+07MHEZUP4YIEoMZPWKm9snbD2vw
	2UlbnbUxtd9sOCF29HlweL/kZrSdptHQPcUMNmdUH9FbcHil9k6wClf/j2rnJ2Fd2Z2g9Q0aB8R
	m9521RVxIS5WoYWZyugvxZS6vA3VjuR5BIq8fxIcdVBiIpdZ9dP0KyZNi1t5Eq3zt406YIaFWJK
	eNRkJDsMqlQLUD/xKm9BvogVovlZKHFfMTeZUqGVHZ2Tr6Q59LkbRuMspDTJWgIYFHSkLuXnEaC
	RWxdr1Yodl5yzZnKGGdD3JhD0dqmMNeODw+mxsUqYiQ==
X-Received: by 2002:a17:902:ea02:b0:2a2:f0cb:dfa2 with SMTP id d9443c01a7336-2a7698f854bmr42099835ad.13.1768981648931;
        Tue, 20 Jan 2026 23:47:28 -0800 (PST)
X-Received: by 2002:a17:902:ea02:b0:2a2:f0cb:dfa2 with SMTP id d9443c01a7336-2a7698f854bmr42099645ad.13.1768981648421;
        Tue, 20 Jan 2026 23:47:28 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dd533sm71941465ad.66.2026.01.20.23.47.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 23:47:27 -0800 (PST)
Message-ID: <93eec05a-588a-468d-885e-5432c8c26d0a@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 13:17:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/12] i2c: qcom-geni: Isolate serial engine setup
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-9-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-9-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: TWR2Ho1s903Z7eaIw1d9eR5OkCXwxAvE
X-Proofpoint-GUID: TWR2Ho1s903Z7eaIw1d9eR5OkCXwxAvE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA2NCBTYWx0ZWRfX+UzfZlqroOs+
 Ar/woJzN2Gk430bWjk2PMox0spxlyWM2ur83Du9z4Um0QSJfWNiIMcgh5fq6Qa22ka7KDbhXO83
 FBuJu9Ow+YvQBGwDwIPiSg6koM+QSQBvu7KEKWqAFM4FFK/imiqgDAeHYvh+MuSRlklPZZpTU3Q
 J5tdlHz3Of4YgVTGkcSziRCevGDgZ2Vgm5Ul+9LsSkd4MRuyGGJas9wWHXqliqwNExMBixukt5o
 R2aZM1J4ZN8wfyroYEBiMLl+NDR74mGCB9ZcbOXTs6YHzR8/mJoqJlrQCzdV0rkS7FXjOexIc7p
 8n1qv5UCPjspLQnEJGrs780o+VcXjaoAuL3dmZQuh84uC47ySaoGfYHiJPsEYdYJXI1JyOHvBun
 C0Qtq6F2HpSFY+/Z/zyxFBOBU3ymRuIbwAW5gH7qZUTZPvh7GmKuu7OSA5l60Swm9zp1OniV7xc
 kjlGCkaqX5jBwBWTQ6w==
X-Authority-Analysis: v=2.4 cv=RqzI7SmK c=1 sm=1 tr=0 ts=69708492 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=u-HHVrLI-TFpGRdm_AoA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210064
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257772-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viken.dadhaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4AB925303B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Minor comment.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>

On 1/12/2026 4:17 PM, Praveen Talari wrote:
> Moving the serial engine setup to geni_i2c_init() API for a cleaner
> probe function and utilizes the PM runtime API to control resources
> instead of direct clock-related APIs for better resource management.
> 
> Enables reusability of the serial engine initialization like
> hibernation and deep sleep features where hardware context is lost.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---
> v1->v2:
> Bjorn:
> - Updated commit text.
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 154 ++++++++++++++---------------
>  1 file changed, 73 insertions(+), 81 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 3a04016db2c3..58c32ffbd150 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -976,10 +976,75 @@ static int setup_gpi_dma(struct geni_i2c_dev *gi2c)
>  	return ret;
>  }
>  
> +static int geni_i2c_init(struct geni_i2c_dev *gi2c)
> +{
> +	const struct geni_i2c_desc *desc = NULL;
> +	u32 proto, tx_depth;
> +	bool fifo_disable;
> +	int ret;
> +
> +	ret = pm_runtime_resume_and_get(gi2c->se.dev);
> +	if (ret < 0) {
> +		dev_err(gi2c->se.dev, "error turning on device :%d\n", ret);
> +		return ret;
> +	}
> +
> +	proto = geni_se_read_proto(&gi2c->se);
> +	if (proto == GENI_SE_INVALID_PROTO) {
> +		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
> +		if (ret) {
> +			dev_err_probe(gi2c->se.dev, ret, "i2c firmware load failed ret: %d\n", ret);
> +			goto err;
> +		}
> +	} else if (proto != GENI_SE_I2C) {
> +		ret = dev_err_probe(gi2c->se.dev, -ENXIO, "Invalid proto %d\n", proto);
> +		goto err;
> +	}
> +
> +	desc = device_get_match_data(gi2c->se.dev);
> +	if (desc && desc->no_dma_support)
> +		fifo_disable = false;
> +	else
> +		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
> +
> +	if (fifo_disable) {
> +		/* FIFO is disabled, so we can only use GPI DMA */
> +		gi2c->gpi_mode = true;
> +		ret = setup_gpi_dma(gi2c);
> +		if (ret)
> +			goto err;
> +
> +		dev_dbg(gi2c->se.dev, "Using GPI DMA mode for I2C\n");
> +	} else {
> +		gi2c->gpi_mode = false;
> +		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
> +
> +		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
> +		if (!tx_depth && desc)
> +			tx_depth = desc->tx_fifo_depth;
> +
> +		if (!tx_depth) {
> +			ret = dev_err_probe(gi2c->se.dev, -EINVAL,
> +					    "Invalid TX FIFO depth\n");
> +			goto err;
> +		}
> +
> +		gi2c->tx_wm = tx_depth - 1;
> +		geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
> +		geni_se_config_packing(&gi2c->se, BITS_PER_BYTE,
> +				       PACKING_BYTES_PW, true, true, true);
> +
> +		dev_dbg(gi2c->se.dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);
> +	}
> +
> +err:
> +	pm_runtime_put(gi2c->se.dev);
> +	return ret;
> +}
> +
>  static int geni_i2c_probe(struct platform_device *pdev)
>  {
>  	struct geni_i2c_dev *gi2c;
> -	u32 proto, tx_depth, fifo_disable;
>  	int ret;
>  	struct device *dev = &pdev->dev;
>  	const struct geni_i2c_desc *desc = NULL;
> @@ -1059,100 +1124,27 @@ static int geni_i2c_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	ret = clk_prepare_enable(gi2c->core_clk);
> -	if (ret)
> -		return ret;
> -
> -	ret = geni_se_resources_on(&gi2c->se);
> -	if (ret) {
> -		dev_err_probe(dev, ret, "Error turning on resources\n");
> -		goto err_clk;
> -	}
> -	proto = geni_se_read_proto(&gi2c->se);
> -	if (proto == GENI_SE_INVALID_PROTO) {
> -		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
> -		if (ret) {
> -			dev_err_probe(dev, ret, "i2c firmware load failed ret: %d\n", ret);
> -			goto err_resources;
> -		}
> -	} else if (proto != GENI_SE_I2C) {
> -		ret = dev_err_probe(dev, -ENXIO, "Invalid proto %d\n", proto);
> -		goto err_resources;
> -	}
> -
> -	if (desc && desc->no_dma_support)
> -		fifo_disable = false;
> -	else
> -		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
> -
> -	if (fifo_disable) {
> -		/* FIFO is disabled, so we can only use GPI DMA */
> -		gi2c->gpi_mode = true;
> -		ret = setup_gpi_dma(gi2c);
> -		if (ret)
> -			goto err_resources;
> -
> -		dev_dbg(dev, "Using GPI DMA mode for I2C\n");
> -	} else {
> -		gi2c->gpi_mode = false;
> -		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
> -
> -		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
> -		if (!tx_depth && desc)
> -			tx_depth = desc->tx_fifo_depth;
> -
> -		if (!tx_depth) {
> -			ret = dev_err_probe(dev, -EINVAL,
> -					    "Invalid TX FIFO depth\n");
> -			goto err_resources;
> -		}
> -
> -		gi2c->tx_wm = tx_depth - 1;
> -		geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
> -		geni_se_config_packing(&gi2c->se, BITS_PER_BYTE,
> -				       PACKING_BYTES_PW, true, true, true);
> -
> -		dev_dbg(dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);
> -	}
> -
> -	clk_disable_unprepare(gi2c->core_clk);
> -	ret = geni_se_resources_off(&gi2c->se);
> -	if (ret) {
> -		dev_err_probe(dev, ret, "Error turning off resources\n");
> -		goto err_dma;
> -	}
> -
> -	ret = geni_icc_disable(&gi2c->se);
> -	if (ret)
> -		goto err_dma;
> -
>  	gi2c->suspended = 1;
>  	pm_runtime_set_suspended(gi2c->se.dev);
>  	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
>  	pm_runtime_use_autosuspend(gi2c->se.dev);
>  	pm_runtime_enable(gi2c->se.dev);
>  
> +	ret =  geni_i2c_init(gi2c);

Double space.

> +	if (ret < 0) {
> +		pm_runtime_disable(gi2c->se.dev);
> +		return ret;
> +	}
> +
>  	ret = i2c_add_adapter(&gi2c->adap);
>  	if (ret) {
>  		dev_err_probe(dev, ret, "Error adding i2c adapter\n");
>  		pm_runtime_disable(gi2c->se.dev);
> -		goto err_dma;
> +		return ret;
>  	}
>  
>  	dev_dbg(dev, "Geni-I2C adaptor successfully added\n");
>  
> -	return ret;
> -
> -err_resources:
> -	geni_se_resources_off(&gi2c->se);
> -err_clk:
> -	clk_disable_unprepare(gi2c->core_clk);
> -
> -	return ret;
> -
> -err_dma:
> -	release_gpi_dma(gi2c);
> -
>  	return ret;
>  }
>  

