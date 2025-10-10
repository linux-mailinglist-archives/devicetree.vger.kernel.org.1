Return-Path: <devicetree+bounces-225442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E59BBCE195
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2034019A1098
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B5B21D599;
	Fri, 10 Oct 2025 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RxK2ba5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40F21F790F
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760117854; cv=none; b=mqxZ+AcHCF89PytiQ/8aegPkYESBHpMFwSMk0E19Dw0gD6IPOx+r/hYaYRf/GIQWQ3EQwKQ1C9OQrPByN5BAAjY9IUVfFQEIRSI4f/rr39ZltRtUM8R+D8pVJeVEOjCnHM14VsXoDl/QZAY0jFt5qzQAEPKhxRdPEGi2nZzjEQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760117854; c=relaxed/simple;
	bh=mDrNzg67+4T5Y/6dMVJq4Jpb0ENW3CJLQ/IFiMQagUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sxxxRqOlDA+oNMJzbPH4EU3ao0JRyPdoDkqYr7QjJ4ncRHAisD9ZiyjaZ/JaSoq9UAIS1SRF8kd+WBaRN9M8QSD7Vh0818ZzsQwrXw2JJFD+CQctjuFmhKQJZ0NSLbidJqIBwoXiqpegk6Ewfdx/eEZ7DywscYSMIF8T1xmmzkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RxK2ba5M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59AFigo2032475
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=w3bg7gh1ykr2qC67egROUS+p
	sgVzhS5XHHiXrNcU4bo=; b=RxK2ba5McyyhH1g7YRMhTDr5Wph51VgXGQWSLTEy
	VQxMFRGC5JMepXS3Vv131EWuw0j5xrzzH/+TpRl2of3zCSHsJ5CVyVAYx+jx9qEn
	NyJQv7MychuG3OTZIY5Ii26fF06GwzOj0ESMyzUyNrFuJYLERjhEtqgNoreEF6+B
	VIAvEuvT0PUhirel6SgaDCJew4I8FCPsxaFZcggrt83k8MCT2aeZMD5EfTEiHqpl
	NvS2O7ETPbmustG0h0XUi3ST+bpTnnITk/o6G1H4tdLxSuEyLQ77esfekhylYkkd
	XFPzmFQG6MArmqX3m21lcYRwyeowTN4J0Q9UU7ASuOlKBA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ky7m3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:37:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85a0492b5feso1297953185a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760117850; x=1760722650;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3bg7gh1ykr2qC67egROUS+psgVzhS5XHHiXrNcU4bo=;
        b=KlRPN1NsrlboBIV87C1OVixmP4+stMuMhYNQTpzNEYJNx6/yFD/zE8WB4C8iT4g6jp
         DgC5KvPGt35FR53hmGBcMdTRlROhC+QeVWBixsQGm2OlKCHf6KPM9Xme+M30c2jm5jfv
         3nAU3PlGIgx4R2COKpe2YD09VZ6WaVxfsL8dJWjB3BugMFXbDoShLAFo78GokfvDJ6Uz
         GB2hjXdXE9cGfxIFeLEuQI0FSx27C1rDCOD+p96omv1PU9wOBlAPMFvh/U++oEECQSg8
         46IXqgfu5S4gV22cS3XHhUHkXxv+eOgrHHaBYXhRaISw7IESTozb0djyOis9dTojn25Z
         jFjw==
X-Forwarded-Encrypted: i=1; AJvYcCWXkZ21JhVZ7ogqbpDrbeEqDOnxsZ4hKZpVUXVlC/9CLhPXkAthkbrc5L5ZsMB2X6ue8ThxepgrPmKG@vger.kernel.org
X-Gm-Message-State: AOJu0YyI+nR5PwThCddVICa8mLcAhDlHz4fB/GsvAsO7VPzkEEbBHadO
	PxA5DWf6XgBx5OCBkyhYdqSw2GITuQEkGkzEKEgbJWVTEjX7GMAuHnofheboxQaFvEdimfnciGR
	M2iJQLgdwPEJxhgGeDf3p5pL/nHmiq3fBXMWopWEZj+/lMTFhoeAsFWWTAP5ruplb
X-Gm-Gg: ASbGnct6ak+8DoaiQGm2JAQ6X0yGbDAzHV2cSVgV6E8MMLaBns6b0YW0go2ZJ+XhuEa
	dO6YhBT/Krf2n3/cNf6JgfzaE+DRBA67y8TQ1E26SNII0UX27QX7f/2b5m4YS1J4qdPYt/Zu6i2
	CYJjIqX1TjhkdfRMHy7PdKvN6638migwfkXnLr0dkSArpOS9uCt2eT02XSva4PQJPjyxzEAvScC
	z9Yg6rqx3oYxjD0sI5N/fetF278L8aoDCjxUgKto3gzDlLVfev/juvzjhdlCQOBeyxQrjfZX7IW
	+PsDoAd6uOsmxUUjv6tP8URLb42bO2LyC4pS7Ny7M20+l5U/7mCpkvCsOU+DdHqqIOUWkbq8/JP
	XJJQvDEO7vzFt7i3+cpRsFkGdCILHXV7gBDuYunoAIPcsPXIAzk8b
X-Received: by 2002:a05:622a:4244:b0:4b5:ebe7:ac11 with SMTP id d75a77b69052e-4e6ead85e0emr213689251cf.67.1760117850603;
        Fri, 10 Oct 2025 10:37:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbL3TyBLrMXjl77SRGNCagUjzucVT9MfivH6Gt+J8RlWvZDFFhwgRFHd84H4t9Xpv5EcRGWQ==
X-Received: by 2002:a05:622a:4244:b0:4b5:ebe7:ac11 with SMTP id d75a77b69052e-4e6ead85e0emr213688731cf.67.1760117850104;
        Fri, 10 Oct 2025 10:37:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908856394bsm1051757e87.66.2025.10.10.10.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 10:37:29 -0700 (PDT)
Date: Fri, 10 Oct 2025 20:37:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org,
        robh@kernel.org, bleung@chromium.org, heikki.krogerus@linux.intel.com,
        ukaszb@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org,
        chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and
 ACPI definitions
Message-ID: <alnlmxbcv3ivhh7iolfqsurhknnm2o6i6waxq7kuhmzcbeljr5@a4wy3prshu3c>
References: <20251009010312.2203812-1-jthies@google.com>
 <20251009010312.2203812-3-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009010312.2203812-3-jthies@google.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXwsAxY98pO6pX
 rZ+poshPVynxrSPY80jRd4GA/tLA5dc4xMeVM1BksVTwX6FXh8jbqe8hTMuM9NuyCu97B4qvPoQ
 KAA2jz04s0cPvxPAbfJbqZcWnavDXf6c1pPjgspNMsWeOJsQa0r5nSGA0PYZFr5eex2tM/BZsqP
 uxjmEdEkYrLNyt28qpfDICAOkBUMGwltJMAL8D0ukkLdgNHzpWIDVVpU6c4/AviAguLGrRN1euU
 zMwmAJsf4mmRXgflnA82dzmLYcGUmTXvFWaWN6OIr/IWF4QGdfvifG1oQ1LnCHgkfyeaOEPRHv0
 hCkhhLl3yqtjMyD42gwjSK/sDjVAmqNPyGb7veFhOF8r67BXrAXjsYJUumwo+gc20nEkxp2Y09p
 tHq6DGGe7CiZ1RFCiFPqx/iMZ0c+Ww==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e9445c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=1XWaLZrsAAAA:8 a=QyXUC8HyAAAA:8 a=fPCsZMoBt-ki5cpKQ8sA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: kJ5Cz7ST1uFV5D6cEvGC7FaSmg3IQZ2Y
X-Proofpoint-ORIG-GUID: kJ5Cz7ST1uFV5D6cEvGC7FaSmg3IQZ2Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 01:03:07AM +0000, Jameson Thies wrote:
> Add support for cros_ec_ucsi to load based on "google,cros-ec-ucsi"
> compatible devices and "GOOG0021" ACPI nodes.
> 
> Signed-off-by: Jameson Thies <jthies@google.com>
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> ---
>  drivers/usb/typec/ucsi/cros_ec_ucsi.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> index eed2a7d0ebc6..62b80ad85a68 100644
> --- a/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> +++ b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> @@ -5,11 +5,13 @@
>   * Copyright 2024 Google LLC.
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/container_of.h>
>  #include <linux/dev_printk.h>
>  #include <linux/jiffies.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/platform_data/cros_ec_commands.h>
>  #include <linux/platform_data/cros_usbpd_notify.h>
>  #include <linux/platform_data/cros_ec_proto.h>
> @@ -235,7 +237,6 @@ static void cros_ucsi_destroy(struct cros_ucsi_data *udata)
>  static int cros_ucsi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct cros_ec_dev *ec_data = dev_get_drvdata(dev->parent);
>  	struct cros_ucsi_data *udata;
>  	int ret;
>  
> @@ -244,8 +245,11 @@ static int cros_ucsi_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	udata->dev = dev;
> +	if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode))
> +		udata->ec = dev_get_drvdata(dev->parent);
> +	else
> +		udata->ec = ((struct cros_ec_dev *)dev_get_drvdata(dev->parent))->ec_dev;

Hmm, could you please comment, why does it depend on a way UCSI device
is instantiated?

>  
> -	udata->ec = ec_data->ec_dev;
>  	if (!udata->ec)
>  		return dev_err_probe(dev, -ENODEV, "couldn't find parent EC device\n");
>  
> @@ -326,10 +330,24 @@ static const struct platform_device_id cros_ucsi_id[] = {
>  };
>  MODULE_DEVICE_TABLE(platform, cros_ucsi_id);
>  
> +static const struct acpi_device_id cros_ec_ucsi_acpi_device_ids[] = {
> +	{ "GOOG0021", 0 },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(acpi, cros_ec_ucsi_acpi_device_ids);
> +
> +static const struct of_device_id cros_ucsi_of_match[] = {
> +	{ .compatible = "google,cros-ec-ucsi", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, cros_ucsi_of_match);
> +
>  static struct platform_driver cros_ucsi_driver = {
>  	.driver = {
>  		.name = KBUILD_MODNAME,
>  		.pm = &cros_ucsi_pm_ops,
> +		.acpi_match_table = cros_ec_ucsi_acpi_device_ids,
> +		.of_match_table = cros_ucsi_of_match,
>  	},
>  	.id_table = cros_ucsi_id,
>  	.probe = cros_ucsi_probe,
> -- 
> 2.51.0.710.ga91ca5db03-goog
> 

-- 
With best wishes
Dmitry

