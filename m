Return-Path: <devicetree+bounces-171930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C11AA08BC
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABA58483983
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2125E2BF3DD;
	Tue, 29 Apr 2025 10:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I7RDeKL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030262BE7C0
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745923198; cv=none; b=Lel0rIq3pRp1YWiSC0BVfHUu7FzxHCmV8At1YrTnABDOHvYHRhlvWC8aD2116k4Wbnhk/MMXpeDrOfh7jdxZGLRRP1jivbIwsBRu+XsacnEZM+c7Xri7fPPIhfaIMvkAh3ndskLb5yxpO3arfaNRJKs5GWls9HygZKid24z8IeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745923198; c=relaxed/simple;
	bh=Wt1uUaZUC9gFE+lR0BVVSbnamlOJ4Gb8HENknFzyCGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R+tmTQR1B3d09DRNrsH57p5B4WzBoh2YTStwnTlJ73dN+jp1WZrib/9kCQY29wO/inBiXGrA3DbC0rJob5CdvQgkXuGXjY3XjFl+rARiNl4bEQUpVPt8qr2N/nFIgtWeC02/AVraiwm5TI+p43bHnPoy5Ku1vR5m+uQxjNAI7kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I7RDeKL2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TA273b019654
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:39:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V5jE47M0eHoQydL1B1vw+3WD5G/nAjGeXiqvD85rIVQ=; b=I7RDeKL2pxucPcNN
	LVqffMqJJcUvuIEyfpuIaG0JtJPXskBN0Xyrsraxjo/q7t5eKuAzGCxHIhSZX2oR
	6eySlNXZ3bSwSDYnAnZSA4p8sMPkQAWg3N4zqR2STqeTPkhylDRGjikqlD8ZE6NJ
	oh86kNQyyA//pBnkd7G6mGptXN6rK1MYDbLhMRfJyFNRODTj554bWKmdfVZ4SZpO
	inbcDS8BEGGezC0Z7ZKQyH1MT2X0r4Om1ONjqZ1OfKdk1MjhYm8xDayuqhAC1De3
	QlwYwkzETh7FFVXEMjaNKL/5jLGbB71OUozoaFvkzYxtK5d2cK/1UrpcqDSVxmSr
	3d3W0g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468n6jkgtv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:39:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476786e50d9so12792141cf.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 03:39:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745923194; x=1746527994;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V5jE47M0eHoQydL1B1vw+3WD5G/nAjGeXiqvD85rIVQ=;
        b=HqePGNBXo4U9SfjBRtEWh5oqi2JHvaCDVFSuWxJqxRiyzruks64wbLXRQVBWgK74EL
         EaZOX8O3DzUbxxs2q9WPfJwGK/Jp8aowoly39V45Sy8beSZMVkjKQ1L01j1D0CcsCVKD
         9Sl8fcGKnX9Qf/cEL8PdCWoe/T0tpJUzRr7d0ljma9VFocPPfQuRVyIds9ZSU9nKr3Cv
         0gqAQvYwS3DPd6+mdhvPI0egzcNirEGCxZdRzdhZfUZrB5/nPAwLIP95waaOx3LFLaxp
         Qhpcy/P1p0qB9TlfaYrFgMMFyFdKDKpJ4tdc9wXmoP2kFZhZKRTtrQqBiKKlAvwdfe+9
         xKmg==
X-Forwarded-Encrypted: i=1; AJvYcCWvt4RzEKMaSHv6AeLeYlDq6LpUw7pph6zo2mlyaL1VxvrGzR1GVK2YV371/ooQJt057Fu8wW4yCzjT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5aCaAyiZeNJo4/Z6CzCQyV8MB6Z5EbC0yARy7KxzxPJUskSUP
	6ABlvZbxum1CXJVdo0k6g+g8cy0FiF25LUDSFsxQWTyvipX67jJ7K+kKHTuhaRS9VnA9ph3SJoV
	Qqft/IyPK7sezixUMTx+/xalNgeaxaspYPGmOHd6urzB7A1HKmqX3Xmt+UsAA
X-Gm-Gg: ASbGncu6E0CQLarI7Ing0RQu4fggO0b7ZPI6o3t50xGmbI2obxhBsSxE9fUiFygmn1w
	wuyEFvrQFbWpgTKVQ4I2joLBMW0iw1VebIU69z8DnRR+xvoPM+ja4fg240QgrYExu/KP6d1cAfF
	WHtsv5w28gT3m4pKcelY52XtGCIiO2P+EyQfDWMmsOdSo1HO0ywtY62Laeju1ug0nbpo7B1eak/
	D8hv7Q7xtSUShoB6gIaxfLSDgXx3zJUwJmC0ricRn3Xhbf7LBAS27K0KVjV+zBwEKTXt7IXR5+a
	VcHAfkU2EtlDnauof3IGrv9RDwSNMSOE6dGZtnp6w6wyDuIA+iR0CLosXa+nroH5nw==
X-Received: by 2002:ac8:584c:0:b0:472:7a2:c3ca with SMTP id d75a77b69052e-488665065b3mr14890871cf.7.1745923193710;
        Tue, 29 Apr 2025 03:39:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7SXnXKwXXoJeyT2VfZNTdTn6rufhVqSRfwdCtlqA8GQfm6SJmi5Lyaui6Ikt+hM1jvsruoQ==
X-Received: by 2002:ac8:584c:0:b0:472:7a2:c3ca with SMTP id d75a77b69052e-488665065b3mr14890701cf.7.1745923193124;
        Tue, 29 Apr 2025 03:39:53 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf7397sm773772266b.92.2025.04.29.03.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 03:39:52 -0700 (PDT)
Message-ID: <c876ae55-a84a-436e-8c11-c0df236c1ea5@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 12:39:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: qcom: qcom_stats: Add QMP support for syncing
 ddr stats
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250429-ddr_stats_-v1-0-4fc818aab7bb@oss.qualcomm.com>
 <20250429-ddr_stats_-v1-2-4fc818aab7bb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429-ddr_stats_-v1-2-4fc818aab7bb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA3OSBTYWx0ZWRfX7ORTQNN5NlWC hQ8yk1AoxxFgqn8JpiCO8gBwyRqT2Yjgd/4sSmxAp3M/ELdQ0+h5Os/uWdyp2FF9/49ymhoKbi3 VxFHQ3sq6MiwD8k1JiYHLmUHOuIu7AVcta/fdTpUUQhfnqVnzx7vEfHMBoMvQ9mrKcL4lrQB6YO
 HYdJHnTqIpWfahLluZgMXeHhiH2MX5X3bI7VElECKX7Dq4dbtPzCyOPZ4462Kwyt8apD32E6BKQ qstbHc2s9pRfRyBZ8XnTH+NNGo7ZPTR9UkIMZwL2SCwNQ1wGDCuJLJKAK86pZ24p1DPOXGxY4z5 6Tl/4dkACzft/8Yd6fK5+ikll8TaomoaP/3gdniroRF2ENb8w7x7nUrgpQistZTSlp4RLYA/0Nu
 cBbuH4uBPtC2hlTnc0l89EbDi4OMmdCXlU8lWotf9vcXviuLWzA1jIizdrE6Vm+sfzOfRx0+
X-Proofpoint-GUID: -JTTT4B7Z9GmH3wBHWVZsqKCT8zKKF3g
X-Proofpoint-ORIG-GUID: -JTTT4B7Z9GmH3wBHWVZsqKCT8zKKF3g
X-Authority-Analysis: v=2.4 cv=C8fpyRP+ c=1 sm=1 tr=0 ts=6810ac7b cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Lg4MxL0JmYoKiIaoETMA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290079

On 4/29/25 5:52 AM, Maulik Shah wrote:
> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
> ddr stats. The duration field of ddr stats will get populated only if QMP
> command is sent.
> 
> Add support to send ddr stats freqsync QMP command.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/qcom_stats.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
> index ee11fb0919742454d40442112787c087ba8f6598..15bdb8e6a542bbab34f788ac4270f7759ca83e3c 100644
> --- a/drivers/soc/qcom/qcom_stats.c
> +++ b/drivers/soc/qcom/qcom_stats.c
> @@ -13,6 +13,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/seq_file.h>
>  
> +#include <linux/soc/qcom/qcom_aoss.h>
>  #include <linux/soc/qcom/smem.h>
>  #include <clocksource/arm_arch_timer.h>
>  
> @@ -37,6 +38,8 @@
>  #define DDR_STATS_TYPE(data)		FIELD_GET(GENMASK(15, 8), data)
>  #define DDR_STATS_FREQ(data)		FIELD_GET(GENMASK(31, 16), data)
>  
> +static struct qmp *qcom_stats_qmp;
> +
>  struct subsystem_data {
>  	const char *name;
>  	u32 smem_item;
> @@ -188,12 +191,28 @@ static int qcom_ddr_stats_show(struct seq_file *s, void *d)
>  	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
>  	void __iomem *reg = (void __iomem *)s->private;
>  	u32 entry_count;
> -	int i;
> +	int i, ret;
>  
>  	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
>  	if (entry_count > DDR_STATS_MAX_NUM_MODES)
>  		return 0;
>  
> +	if (qcom_stats_qmp) {
> +		/*
> +		 * Recent SoCs (SM8450 onwards) do not have duration field
> +		 * populated from boot up onwards for both DDR LPM Stats
> +		 * and DDR Frequency Stats.
> +		 *
> +		 * Send QMP message to Always on processor which will
> +		 * populate duration field into MSG RAM area.
> +		 *
> +		 * Sent everytime to read latest data.
> +		 */
> +		ret = qmp_send(qcom_stats_qmp, "{class: ddr, action: freqsync}");
> +		if (ret)
> +			seq_printf(s, "Error updating duration field %d\n", ret);

let's just return some error, instead of printing "error" successfully

> +	}
> +
>  	reg += DDR_STATS_ENTRY_START_ADDR;
>  	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
>  
> @@ -310,6 +329,15 @@ static int qcom_stats_probe(struct platform_device *pdev)
>  	qcom_create_subsystem_stat_files(root, config);
>  	qcom_create_soc_sleep_stat_files(root, reg, d, config);
>  	qcom_create_ddr_stat_files(root, reg, config);
> +	/*
> +	 * QMP is used for DDR stats syncing to MSG RAM for certain SoCs having

having what? (you could drop that word and the sentence would still make sense)

> +	 * (SM8450 onwards). The prior SoCs do not need QMP handle as the required
> +	 * stats are already present in MSG RAM, provided the DDR_STATS_MAGIC_KEY
> +	 * matches.
> +	 */

Konrad

