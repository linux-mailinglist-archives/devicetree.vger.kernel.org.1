Return-Path: <devicetree+bounces-224469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B49E7BC4292
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:31:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70045401A38
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0359253944;
	Wed,  8 Oct 2025 09:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o03U3zoW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6086C1E25F9
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759915903; cv=none; b=C20C6jsxtWzAV2n3lovjN6SqMvzYKo059tO4DtlPZHbBGqMTH3bM6HIYT+UunHtRc/EKhGB6rIMQDk5mGl1GfkxfcJOUVXb/T7W7bjXO05TV7HzfFCzb4rViEQ/a5JNoXJ1g8IZp6W0fGRS4/7kgsYLZJYvtpbvDTj+RMdtnQiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759915903; c=relaxed/simple;
	bh=tCc1PMyHmBOqMiV0qFZ9o/QlCes0mAXRkZbAUL7jqnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q7CFlTN4PpliHTV68kpOFUXnOZVFFFFdbrvWUbrs9ByTypHRECm5Osy1qcLoACXl4ubL5tKMzmqSuiCH8N2TE1wzrh47Cpp48WrTv1P893mRj2e9cusQ0LZpkkeArfGySrVOD2mGNlZHdopI+EcWjy6dB4VbP3fJthOZmgm8r8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o03U3zoW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890mrP023842
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ShStu+tivNWxJNb9OpE76BCF0d8VuC1LAfixqiQb3OY=; b=o03U3zoWFsowrXnn
	2UNigC+icoONELY/Je7uWbX7abtPdVQPs2yUfZH45SO34KnUy0fOZ0eZAw9W3jb3
	fKIja23PN1qijci21AWhrvIssw4XnhLrruuJkHCXoApQJq57Qrv65rN4sXRIB/UO
	eaB+tBzRx9Mc8L3QxzcsuVJp440uCxZvhP7/jrJLtxiIaPy0TK58pVVK40gmQ3r+
	uKRglkUqDn3Lrymqb3KNUtDiQvdNVklWP5PuUKcVNNWBHgZTu2gkYiLpBUlWoZLu
	Po9aK7wFuLL8aYcTCUVfQOOeCHqmCr15Iz9c3HoCnVSpA2ME1JanAvtJLrErABBs
	IG/dgA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n4wktdtb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:31:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85e23ce41bdso170646185a.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759915900; x=1760520700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ShStu+tivNWxJNb9OpE76BCF0d8VuC1LAfixqiQb3OY=;
        b=CYP2204XzAHQkrdL5lvwgnUTg2gWoWQz5ez49sIcGObo6YT9yas0BRTpOm438LHkdy
         l/L0xXD6jIoByahwu6tMwBesmRv44ydYe8E1W0umWvXS8FeyB1xL1HKRfTZw9Jr1WTGX
         hr50eH7VtIBDoTHw3fmQme5ObwnW94n6H0KLIM3Kx9K1z99J2JvKttttTHYNheazKjzJ
         KN+7qnFiyOP2t5qiLi/Wz9BjuG9+qSKvJkc7lu2YBEt7fiddwm15vQDwup9AnT7mk2wI
         qqrr0hcQbhLBHSikSgoj9xqys0Qc/FBBYK2lvLe/5Zpveq03n4NmSA/sVVYeIVWghVYi
         4KrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuchGfanMpZTJeg3yw91wmci67iywLJw8QZ0CNtYgXJt4UuvgZAXlfNI5qP6PM8osl7/dYN6hY+Fnb@vger.kernel.org
X-Gm-Message-State: AOJu0YwzHzdjbXitZ0RIdmwx6U5g1AQ8C2N4jy5ZRD7ez0Kiph4Zc/o8
	sHpDISZdjt0bNAFK3uKNKJuOYdVy4rxfcLNEBfhU3tNvMgBrq4wHbRc8ua6auX+0pNxYHMuCaad
	dRvRfuHFp2FGPy1Uawc1Af2LdceAJvbnJYcJkctFdfGA3XLLw3Z4t8qwDn712QUb5
X-Gm-Gg: ASbGnctgKbp+8n1Fa9gNM4whe7zqCU3ayIOh0p19TI5ErdFT47nPf9atZIHPn9oX0U/
	5LZTkgrywleWD/9D67qxalc5CdeSxmlmEcxcqANvqEdd7/EF/nSxVrfVp1UtXbWHTb9nMqZs7+Z
	wSX9rnqYyAdOo5ljeyS5xcCrds7To50UcYKh4E15/mGPpN4AfOXQ2vBbTS7IoNaIOmh4t8DVhaO
	IxWjsd0SyUr+WKQzO6/5X8oMdF4AirFQSrj9XEEjxqPxGaXYz4vXQ+1InO7q402iEPFQ6X0X2aq
	6Ggdimvp1wK24DtwYRCwRHsqktCdOlaHRVdhSJcdJcAJtlnmGNgUPvBFcydN4IQiQEfX8jhbRZl
	228aSoxoLZ6L18lRNpMeEb7IGyUk=
X-Received: by 2002:a05:620a:4802:b0:810:a76e:ffa0 with SMTP id af79cd13be357-8834fb91810mr254823185a.0.1759915900134;
        Wed, 08 Oct 2025 02:31:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgI4JjYPgSltjbrXNMG5XKEPcSfJAFH2WNqprb2InV6i1eGoR4lz/eu3nqT6ttxe1KsGCpqg==
X-Received: by 2002:a05:620a:4802:b0:810:a76e:ffa0 with SMTP id af79cd13be357-8834fb91810mr254820585a.0.1759915899691;
        Wed, 08 Oct 2025 02:31:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4c1f6sm1656500366b.78.2025.10.08.02.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:31:39 -0700 (PDT)
Message-ID: <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:31:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDExNyBTYWx0ZWRfXznSKqXWsCzPR
 kxcrFWNjdKJsPk3fW6kaE2j9vahGR31iL1lcd3bpbUvj3B7QQ48+DwqSa6azca1YaWoBixPTHDH
 k43N7x45PY9y/JccQOBcK+wP5D5EQSabB9JdbqLTQNsERQ/uw/pPp915Mhke4nnoUELsa5pktAV
 Fusely4NoULoNhk8PZmjLYRFwfUrVbfk8koGAj1dRFlffU62JP0zqoSVAXdcqP4NWvteaee+Ioy
 gBVgOHWpX+4lG483W9XewF05T2KDFTFiV1tBo+JSe12NVuXV3pjwqSDnvEfmeQkuSJdhKlftLF9
 F0TXBWgu7iNqusxyb27j8Wd5SWAi6rBOGNMK9oluKuX6c94l3AdYUt2fHALW8g7e3pubYGw8tGP
 Q8zzZyIB9hgx2lU7+bMG0wnEN/JpTw==
X-Authority-Analysis: v=2.4 cv=BP2+bVQG c=1 sm=1 tr=0 ts=68e62f7d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=GTBF0nZXcthx15BNZngA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3744mxzOrfbAi7WvASlGH129pmBqeBe-
X-Proofpoint-ORIG-GUID: 3744mxzOrfbAi7WvASlGH129pmBqeBe-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070117

On 10/6/25 3:55 PM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +static int qmp_combo_get_dt_lanes_mapping(struct device *dev, unsigned int endpoint,
> +					  u32 *data_lanes, unsigned int max,
> +					  unsigned int *count)
> +{
> +	struct device_node *ep;
> +	int ret;
> +
> +	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, endpoint);
> +	if (!ep)
> +		return -EINVAL;
> +
> +	ret = of_property_count_u32_elems(ep, "data-lanes");
> +	if (ret < 0)
> +		goto err_node_put;
> +
> +	*count = ret;
> +
> +	ret = of_property_read_u32_array(ep, "data-lanes", data_lanes,
> +					 max_t(unsigned int, *count, max));

if (*count > max)
	return -EINVAL;

> +
> +err_node_put:
> +	of_node_put(ep);

__free(device_node)

> +
> +	return ret;
> +}
> +
> +static int qmp_combo_get_dt_dp_orientation(struct device *dev,
> +					     enum typec_orientation *orientation)
> +{
> +	unsigned int count;
> +	u32 data_lanes[4];
> +	int ret;
> +
> +	/* DP is described on the first endpoint of the first port */
> +	ret = qmp_combo_get_dt_lanes_mapping(dev, 0, data_lanes, 4, &count);
> +	if (ret < 0)
> +		return ret == -EINVAL ? 0 : ret;
> +
> +	/* Search for a match and only update orientation if found */
> +	qmp_combo_find_lanes_orientation(dp_data_lanes, ARRAY_SIZE(dp_data_lanes),
> +					 data_lanes, count, orientation);

You can zero-initialize `count` and drop the custom error parsing above

Konrad

