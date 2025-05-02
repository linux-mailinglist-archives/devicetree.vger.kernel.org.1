Return-Path: <devicetree+bounces-173052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5CDAA7561
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99B401BA59FB
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B95256C89;
	Fri,  2 May 2025 14:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WcbOSsGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E173C2561D6
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 14:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746197668; cv=none; b=fy+Ig2eoY83aL+zlsqZf+XsAfDarPDr26DNgUZ9hP8MhEB5LRYvZXXo+8CFfgW3X5e9OHcUIXGtjz77TJh5DnswmiiUPq+UzSZtBvX7gGJU+/LUAGfOYSsD+v8SnB6b/aUNNx/EBpE1S/SNntndu26yKuVoURaJ9EHZ4YCqAX+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746197668; c=relaxed/simple;
	bh=n5mbVutTTdA75c430IqNM7iDH8/4xuyXNJAQmbwMjUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=amb2FhwQhDM3rUFeX8GeaaIoNfc6Xcw4MJ3jpt8QqVmL99ay4GTsmpm0wHYR1R8SnawftXQaTQCjSQXsthC7/GGyONco8xmFGxKzrna4yzgTxDCsnkDhcrJSWifMYyVSQtKNmjRohjUWLfDaqwgl0vrJFQ+PzPZAPPSfAa7vbXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WcbOSsGN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542Dw1xf001408
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 14:54:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qE/jsvPg905w0/spqoOjWTuo
	z5yjxf8U+JSEYe0nzlo=; b=WcbOSsGN/c0sFyFBfIc5Rky471HlcoA7imjJ4rFb
	2mkJtrF04Z7h2SROOTRBXgOtwZ3THkJxS/l/rZmjQfypV9cuavXASaKWyjyAfhlo
	h/kDqWDeBfRFxSqH1Bju3iVnqdwQCaToGB3/eK4S3ue7t1VCb0qVR6ro+hjM11bM
	U7D4snXDPQ328LcNksud4dGaR66HKKM9IqX9nTCaEWaQt+qtAmlE3pB2GrsgQeic
	IA6lyZGe3PTZ+qcgZsRpa87qat/t35uQk7WrkDfjY7zQyiKMOX5shduWcDMdV2Vh
	N15uh5ypS2QXJ3vDGIENrF8ql0qFclxDgFDdZaFXWfrtVA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u2gpy6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 14:54:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so253916285a.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 07:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746197665; x=1746802465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qE/jsvPg905w0/spqoOjWTuoz5yjxf8U+JSEYe0nzlo=;
        b=HJh+FH+fKkbNdVp6oaXH6FjUTkZCt8irhavqfr4oNqvmy4JJ3tPRXQlLwdmDEQHJOl
         PkRkScPey68vzaNWj2s6KH/jGHfW44IxmfQtE5FJwxq0nbU/+fy80O/I8t9i5MBMaAJW
         gPZGa64K5vZTq/LZGK3L0hs16FKAhDx0+HiQGp6+Hn+xzUM0vU6/LEahjK4D5up6wpUd
         zj/DISm/46nJ5CA5Zhc+Lpi01DGt/4efJwtXX9JcDK48Vr5TNQejgOqrmuOtprd4O2MR
         Eh6aVzW+6fFNIl50FeaK3cZt/nJGkGCOpKl5SIPzot3148y42SJTAFfh6O2lY46nZA78
         qr/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUiSTGsDFmPTmlYpi4h3XZ6RKzhskUOVmXx2oNPChIZA6wQjOHVKfFg+qWiyDJgYbFy2UphG3KJQdVO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzebag7o4awZTNaP2fZdnIm13D2WX/7XyYMmBoLOdwuyzFrAmiH
	fUh+LrMyeMjuOiG8Fo7dIu97IlhO7BnlxmHAfkhNCaLQ60PWwdp+e1k70ppeLniXWgvAXthCSiG
	WCl9dErpGQymP5YMReElvSFVhEW4Pg1OEMwj4NyRdSh88T4+9SDmJoBBXU0OD
X-Gm-Gg: ASbGncsuadIK26W0JFmTiLUPrgp08CCnmNmpMoL5I3zZys7pPb9k50hXPV1Iet2CKEf
	WF/E3terAn1esSNJjgHo/KNxjdMRR3IYpVTicRNbj65eb2KEllDoXwqXNnXs8fglM+OAenG5zbv
	ZvHL+mu57jBIDM5vgNnHnl5JxQYKhBYMzQbTjdQNlZj+aRR1TdowFgIJkFA6PMdZrmOC74xbPNT
	PqcoLoILM9SyaEWEkM6KbJPAMxrewUlFq8dIWyPiTYZm25JeEyDrP+Lg03d9A8JQSzLYtyk+cyQ
	/tJ6ntrQ8iv5iSe4cxavc2YRYbE1BbiZ1z5Tt/yNtfL06oYXSToH+i3ndgrJwYl/DQGofbjPxx0
	=
X-Received: by 2002:a05:620a:488c:b0:7ca:c9cb:abc with SMTP id af79cd13be357-7cad5b4d180mr417139885a.33.1746197664695;
        Fri, 02 May 2025 07:54:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFet1ZO0otbj5B/aLa36yQdNFxhUTegLhRDS2nexQF821IjSj7e9HTywZtuVlJ/LbIApJViog==
X-Received: by 2002:a05:620a:488c:b0:7ca:c9cb:abc with SMTP id af79cd13be357-7cad5b4d180mr417135285a.33.1746197664163;
        Fri, 02 May 2025 07:54:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ee6c1sm370305e87.110.2025.05.02.07.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 07:54:23 -0700 (PDT)
Date: Fri, 2 May 2025 17:54:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, bod.linux@nxsw.ie,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
Message-ID: <gmoe3ykmns5hmmz6hdyxgzxiejb3nycghhvt3pgjysq6xa2zni@wpqyuz2pj5vy>
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
X-Proofpoint-GUID: Brh20oaaD3y9BHY1qywuUk1Na2JWmmh6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDExOCBTYWx0ZWRfX36AYVj/7mxfa kWC3WYsc9CdpdFqJPQSlYmkgYDOU1k38W/te/U/EYSPeVxC3UlWmHM1jHUwcEr3X34uyWuJlvjk z75feVOCIqkrvXwWWn3Q6is7baCkMjAih+2hrtIMATKcrP2CW9uMPnKqYdhZVd0SpgNGdbaXGyZ
 qKM30gts3nyqrBo198eKWJTu6yuWfeLf16d8CTrt6SIOUDjmARU6N6r1YGrDZUMvzhkUemSGPX8 +5QrdoeQ4jMUnx3lpsuxLHHLJQqLOqWBf+ul2NQ3Qmg025WkaJP2mXmqmIIhvId29vg/8bct9gm 6ByErQEa2iF7sZ/DgOmdF8qvmvr2vOdUnhWuwrLDniP6Ck6EWPu66YwCtsSE+Rutu5mMLDpRkbp
 qxWZ5qg7InpCIn2HSc5GCrdkuZWKLI8TTE9AQMHOuTwVQo9ejKGMDXTSzCWNxIfVn0H1cmUI
X-Authority-Analysis: v=2.4 cv=b5qy4sGx c=1 sm=1 tr=0 ts=6814dca1 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=d-kK87IHMynt6gTeNOsA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: Brh20oaaD3y9BHY1qywuUk1Na2JWmmh6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 mlxscore=0 impostorscore=0 malwarescore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020118

On Fri, May 02, 2025 at 06:47:52PM +0530, Kathiravan Thirumoorthy wrote:
> When the system boots up after a watchdog reset, the EXPIRED_STATUS bit
> in the WDT_STS register is cleared. To identify if the system was
> restarted due to WDT expiry, XBL update the information in the IMEM region.
> Update the driver to read the restart reason from IMEM and populate the
> bootstatus accordingly.
> 
> With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
> as below:
> 
> cat /sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
> 32
> 
> For backward compatibility, keep the EXPIRED_STATUS bit check. Add a new
> function qcom_wdt_get_restart_reason() to read the restart reason from
> IMEM.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v3:
> 	- Split the introduction of device data into separate patch
> 	- s/bootloaders/XBL - for clarity of which bootloader is
> 	  involved
> 	- Mention the sysfs path on to extract this information
> 	- s/compatible/imem_compatible in the device data structure to
> 	  avoid the confusion / better naming
> Changes in v2:
> 	- Use the syscon API to access the IMEM region
> 	- Handle the error cases returned by qcom_wdt_get_restart_reason
> 	- Define device specific data to retrieve the IMEM compatible,
> 	  offset and the value for non secure WDT, which allows to
> 	  extend the support for other SoCs
> ---
>  drivers/watchdog/qcom-wdt.c | 40 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
> index dfaac5995c84c1f377023e6e62770c5548528a4c..f2cb8bfdf53a5090bcfff6ea3a23005b629ef948 100644
> --- a/drivers/watchdog/qcom-wdt.c
> +++ b/drivers/watchdog/qcom-wdt.c
> @@ -7,9 +7,11 @@
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/watchdog.h>
>  
>  enum wdt_reg {
> @@ -42,6 +44,9 @@ struct qcom_wdt_match_data {
>  	const u32 *offset;
>  	bool pretimeout;
>  	u32 max_tick_count;
> +	const char *imem_compatible;
> +	unsigned int restart_reason_offset;
> +	unsigned int non_secure_wdt_val;
>  };
>  
>  struct qcom_wdt {
> @@ -185,6 +190,9 @@ static const struct qcom_wdt_match_data match_data_ipq5424 = {
>  	.offset = reg_offset_data_kpss,
>  	.pretimeout = true,
>  	.max_tick_count = 0xFFFFFU,
> +	.imem_compatible = "qcom,ipq5424-imem",
> +	.restart_reason_offset = 0x7b0,
> +	.non_secure_wdt_val = 0x5,
>  };
>  
>  static const struct qcom_wdt_match_data match_data_kpss = {
> @@ -193,6 +201,29 @@ static const struct qcom_wdt_match_data match_data_kpss = {
>  	.max_tick_count = 0xFFFFFU,
>  };
>  
> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
> +					const struct qcom_wdt_match_data *data)
> +{
> +	struct regmap *imem;
> +	unsigned int val;
> +	int ret;
> +
> +	imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
> +	if (IS_ERR(imem))
> +		return PTR_ERR(imem);

Why? Just pass the syscon directly via DT.

> +
> +	ret = regmap_read(imem, data->restart_reason_offset, &val);
> +	if (ret) {
> +		dev_err(wdt->wdd.parent, "failed to read the restart reason info\n");
> +		return ret;
> +	}
> +
> +	if (val == data->non_secure_wdt_val)
> +		wdt->wdd.bootstatus = WDIOF_CARDRESET;
> +
> +	return 0;
> +}
> +
>  static int qcom_wdt_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -273,8 +304,13 @@ static int qcom_wdt_probe(struct platform_device *pdev)
>  	wdt->wdd.parent = dev;
>  	wdt->layout = data->offset;
>  
> -	if (readl(wdt_addr(wdt, WDT_STS)) & 1)
> -		wdt->wdd.bootstatus = WDIOF_CARDRESET;
> +	ret = qcom_wdt_get_restart_reason(wdt, data);
> +	if (ret == -ENODEV) {
> +		if (readl(wdt_addr(wdt, WDT_STS)) & 1)
> +			wdt->wdd.bootstatus = WDIOF_CARDRESET;
> +	} else if (ret) {
> +		return ret;
> +	}
>  
>  	/*
>  	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

