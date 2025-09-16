Return-Path: <devicetree+bounces-217927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4DAB59B9A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D8F17B64FD
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8634B3375B5;
	Tue, 16 Sep 2025 15:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JL73Uz32"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DE930C624
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758035507; cv=none; b=lvVovSSXyjRjsTNZqCTUUuIbkqVN8kroWOXHwiI2w57Zkp/ytfD6bNzaCk9xI71C/HNQYKM+zKmemYUjnqH+72cAhimD4ly/Z0T8DsIFvReHlzO7ChhauxreIF1PrLh8N6xIOvLfV2ZzSZVQj7R0BkA6flw+sfc0qLk/zl1VedQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758035507; c=relaxed/simple;
	bh=t7UUwd4xgMft90yTMEDkSkQCO8HRauBhf0Zx0laARP8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H/idK73Tp+XlTSe/2Rl5k9/Kon+IjhRcNjxkAUxewK77xj1Jj/8YID9yizAChhS4FzCUManw0i5I9SrsvuZ7LL1vANRcLqZ5t9vVDnWBKLtnpoDjAjdNKqgOK8Y+x4BB2ZJgR2l+18pBVtiiBOuRFvpuH6iKmRqdGJPeeSwyZU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JL73Uz32; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAKk0i010528
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:11:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TNby5qq49hfo4o9k//m3Xyh7
	0OtDv47+M1YG9MtLCxg=; b=JL73Uz322hjo7db1y8VK6MOqpZS/kNSXyhblTxji
	X/8ett4qqsRTgS904srclOUiORO9cUQ6fCNQAdqVvbcsd/FpA1QncRkBfd94o/9A
	ayIVhYJNJflxOOTiId6jWan/mBB5kLQNYuopyYXUUqOWrhXA8sAyxX78F0XvlXJG
	pHHv0lRCGDuOZLzhNvBwVoJrRRHia2ITx3ocbJdXEAH7TxVOXS2Ot2X3WxnxRsKs
	w1eOZm7vGwK6MbzBwazgwh3l3yTmEKfroCsKUCamZGZk1e5bGDicRtqDY167Q7ag
	Hs+kbQDaAo6941gLLkSbxgZDV1ZTBANlxA4/IP/V80SL4Q==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951sns46h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:11:45 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-8c6520fc3e7so980637241.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:11:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758035503; x=1758640303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TNby5qq49hfo4o9k//m3Xyh70OtDv47+M1YG9MtLCxg=;
        b=sBlfoVPMyJ/aXW9+lgubejuE4yxo0jgGrODib/wpkJXhqjy+Jv7NsgF996x47C8pzq
         rTx8Qo2ZFvvAbKyi1HU4FZC07C8RygAyTqKx3cwfeBrh7+n/Uw8cPdO9gHYWlMtJWP/C
         w9P9PC+TkjRzpg1jUsaQNrEXheH6Hpd9SFhBy5MqWVHJq5zv9YOvMd6eZ9rG336xi2CF
         zfTi9icu5g6yVP0WLblHRyxJSwV77R6lthc4/qzSz6OsIUrfCNirwChScflyXxVpkuiG
         nV3tFZaRzxlo3jLMCPnJ5M8RnV9Issh2M7zSHiyiGDXShANWO+j3pOfPNQAf9o33jLzL
         9Dqg==
X-Forwarded-Encrypted: i=1; AJvYcCVY94Z/u7LgN9C27D+IDpy0+pH6LB2hpBQwVJxfJ+xz3po/JQpGe6g8hUvrlS/OQL5NEB1pX//Lcxri@vger.kernel.org
X-Gm-Message-State: AOJu0YyHI7QFIYp1ci4ECpT5MkDAqIJRHliKfQJZaJBq2NMib3W9d0uv
	t9zKk/jkyMgMPJxy+q09qlXuyDo+dTydZ4if1PkutsxkUOASpi66J2Ma8zf1m/Z9ui2CDT+0Mld
	92CTe4DV33PNxiJiG7SUzIU92fXCTi69TEsi7JZJfQmCFrXAyugWtp++u73Rip5GV
X-Gm-Gg: ASbGnctwGl7DpD3sPy6geTCHPD3o5NNtyfuwocWGosIWTbsgiaNU4GHayDgfb4xITGc
	rMCGQfXHrnPCcif6IvoN0g0lVhXjqERd75JQnB173WPRmTCzy5fow+vlw8QVdq73ysDB1HBZLjf
	UvMUS2KYSPwc5MkQw3vvWvvYtqXJ5p/7oyAmzx0dn5rmhFCpA0I0vWB/AdMdxKen2Lwp/zv/XAe
	45GR40YsDF8ZQeaUs1Az+XskQod5rNnCiRm2VdlfnVwiZQezwzceoQcE5NXz+YbXPIydVulsDVD
	D2ycblfyW3pYSpLzr+6NRR5SEKn3JH8R51fCdd6ERUhba8n/ZBIG0ZYTvc7IAWCpS8/8JOGOoAq
	QDViebKMTAr6WmeDsFvsd6SrLEvUGSnV2h4OG/m6qORPIZdR2TOkj
X-Received: by 2002:a05:6122:3bcd:b0:538:d49b:719 with SMTP id 71dfb90a1353d-54a16b2c285mr4799758e0c.1.1758035503387;
        Tue, 16 Sep 2025 08:11:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjpODeFy3ymdDzfM3pALWwp0engqNOO0v2fjb8KygHwUWmCU8dovGzcM73w2iuBtRoo/d/ZQ==
X-Received: by 2002:a05:6122:3bcd:b0:538:d49b:719 with SMTP id 71dfb90a1353d-54a16b2c285mr4799705e0c.1.1758035502721;
        Tue, 16 Sep 2025 08:11:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-35828d19a04sm15474721fa.9.2025.09.16.08.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:11:41 -0700 (PDT)
Date: Tue, 16 Sep 2025 18:11:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: Re: [PATCH v6 02/10] arm64: dts: qcom: lemans-evk: Enable GPI DMA
 and QUPv3 controllers
Message-ID: <pwnt6obqsyq3o2qzqk5fcydzlhwv7ycmywvdeo5pwhvt6kbw35@ce36yjyo3hp4>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v6-2-62e6a9018df4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-lemans-evk-bu-v6-2-62e6a9018df4@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c97e31 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lcEb1VsSqg0gz2oZhFQA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: nY1cZwJyCRV1RHv3CauM2JzxtDZ0bhc7
X-Proofpoint-GUID: nY1cZwJyCRV1RHv3CauM2JzxtDZ0bhc7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfX6dnU2cEqEXFH
 U7zb9QY9VLoBbu2TPw3XJ2ut8QJBNT5DicPLsJ5jv9ku5I6GvcpPy8hgeGOhvzZoNNc475rv4LN
 /I8sEr/+1zDQRhVA4bNLGq2j0dTS0U/c7DMlZTgom615+cfmYIoJDRUcwqg/Zue3saFYwjvN7Dy
 UC/HUdr6UWjVS+TzZtugljCVqSfPGOX7T6959edrRsEljVC2C/EJTMberSKs6Ddww6SstTBj+2z
 EK8Cw96s+9JgFGvZDwMdricoRJzeFcYEVPfwNcCVX21e3Bpj4Ck5l1rV1GWDknlqw1ppdzLg5HL
 qaEeDrwF7jHxGKJQqbJVBzycd0AJQNITa9JAAXOC3XO/I7WmXc0uDMJKxvk/dWOCEEnOOC4hsLC
 W43Xt3Z3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

On Tue, Sep 16, 2025 at 08:29:24PM +0530, Wasim Nazir wrote:
> From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> 
> Enable GPI DMA controllers (gpi_dma0, gpi_dma1, gpi_dma2) and QUPv3
> interfaces (qupv3_id_0, qupv3_id_2) in the device tree to support
> DMA and peripheral communication on the Lemans EVK platform.
> 
> qupv3_id_0 is used for I2C, SPI, UART, and slots 0 to 5.
> qupv3_id_2 is used for I2C, SPI, UART, and slots 14 to 20.

Don't rush sending the next iteration until the discussions have been
sorted out.

> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 

-- 
With best wishes
Dmitry

