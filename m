Return-Path: <devicetree+bounces-159421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BBFA6ABB5
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 18:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29A6017A716
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 17:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BDB7222596;
	Thu, 20 Mar 2025 17:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CU16RTa8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1520421D3E2
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 17:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742490686; cv=none; b=AjgWoGSjO24h8p+of4ks9vvnnbcRYQpbyvgpj6a/32nyai31bHHtBd3lqZjmMabBFsqFRGPaLw9Y7byw0kbouAB2rUAtlVX8wGPsJ5ERMWbWPsrhlgJlJWW7+cdG5HVk7t7u2hYJrNrNncNFhFsK4TKsK+chnV0PozlBOV037u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742490686; c=relaxed/simple;
	bh=oZH8Uuel0+yRQNWORDr6kA9v0JoudJDsYXEqg521FJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ECj/q+00/AZg3oO9zKCf6ArfjisOnJFSIjz6rLRSVHXZ5wQbjmn8HaE/WC2c2rQ73L+pRRZ8g4loW4DhdeT6bkcTeya5RGvnNvSjsyY1136LsYg6515RUzBiBJwEezwB4Zyu1sH9btsQaWTQ1rbgGSOIZgD+dZTpPpMvMSQMIv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CU16RTa8; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3913b539aabso597717f8f.2
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742490682; x=1743095482; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LszHKVAAmbCzrn3xqUVYloX7G0EimqlzgJrGy2gnmsI=;
        b=CU16RTa8IzquEBjkWTq+yFWD+PIH0VXwCjaipYXfgilEGI89OUY0r8D+qvJxRb6w5R
         +1IETKEwo9MgelgMzuwk5m77viHOJW54nVrU+vNJs3aNOGxf5w/6cXF38a9hG972fexy
         Ve5lNjevrs0uOTk7ffOlAe976IbXabIzdP8y2L5c0ArOXId8Z6Vc4b9k2Paj6jEb2HE+
         atirNc62tvlSgYfNz8yzo3414dqgJf2IxYFb7dnEGFlyn03CQYEvQau5QiPs9t15Xv/a
         /SehLLUtdC9t+4PxcOXwceXDAOCMhD7xDLmx7wk2gt0KY0Xebm5HkVVm4jarRZMeFQwy
         mQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742490682; x=1743095482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LszHKVAAmbCzrn3xqUVYloX7G0EimqlzgJrGy2gnmsI=;
        b=NJSiekLcjwmy3icZt6qWDx5NpCTNAGA4topfk/PTKeBCT+Dq7qmMWSRcDETBLCVWho
         wsLd2JR9hh6BbqjW10bCnm6kGntZpjv0yz9scSyUmcZ8/IQOj4bhWChRuciLWRQX0k4X
         oIcc45wJEkQ/njnBn6q1zx7vrezqdS+GK/izUFH78yBo39ZL80aMv0rePXX+8+H4eQmd
         pMWfhuWCVm5kX3Ca9N4Xxa0wGP1k8q8PknkbdMtoB6bjhG/B6moAEKl0+IsNFYZjUg6b
         tzkyv/VHR6OdHfw74XW1COlHmwCo+FLujPkpO5VJRZxAsJXHgEiCiW9CeVX6vapZfCYG
         FO3A==
X-Forwarded-Encrypted: i=1; AJvYcCU98a17wqHFdyesJHiF2jREDOjFRTZF8lTP6sX8ts66CGGCT+1/YyzTPD/zxTaDJzVOrrt5G5nFOVLL@vger.kernel.org
X-Gm-Message-State: AOJu0YwU1W/0veY98XrJbA9zDfEIC5cqiUx1vW3O0JWv3cli7eKGQ3VD
	igAm9KIbD/5/fasH2NWprdjvkbH0Zs73XKMXKbWRnmVGS0TL+skM0Lp1qgys4e8=
X-Gm-Gg: ASbGncs0PHiqCAzrqY8EygDCZiaTLv3EYavWBfk/FSBBXzNLkqI94G9wb5NA+W4RsuS
	SrA3LCgLgtLADokwCaVwq+6fJ4ZEqzELa8HtbrHaMLgDdC/JorwAvp4huzP+9Sp3S+biEklSOkW
	uRPAxkypHccS4N8TuHiCkL9dCdLbGtxpjIbrjVIPtZu0vtNXfTQFXAaxkS+tmr/rlvS0+hZ4eZ7
	UMbIG4VCBB9D9N7JQy9bGxT1iHPSM6VL33uFyijC9rRhv+xbjvQHZSiNDcd7hWlr9R16EuRvGuD
	oYCkDxAqaz9Qpx1ldicmqhxGKXgL01lT4/9ACX1J091+X837f+rCA8KKb7SXgYU=
X-Google-Smtp-Source: AGHT+IEEqmDyc13593/QHHJ/rxN/j2FUptO7R/XTlEXHlWVEHh3gZS6BqeAIdYMHPC2w1m3aWmzwvQ==
X-Received: by 2002:a5d:6c67:0:b0:391:30f0:1704 with SMTP id ffacd0b85a97d-3997f9008d9mr339289f8f.4.1742490682128;
        Thu, 20 Mar 2025 10:11:22 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f9a3f6bsm141041f8f.39.2025.03.20.10.11.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 10:11:21 -0700 (PDT)
Message-ID: <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
Date: Thu, 20 Mar 2025 17:11:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
 gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20250320091446.3647918-3-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 20/03/2025 09:14, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GPDSP remoteprocs. Add changes to support
> GPDSP remoteprocs.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>   drivers/misc/fastrpc.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 7b7a22c91fe4..80aa554b3042 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -28,7 +28,9 @@
>   #define SDSP_DOMAIN_ID (2)
>   #define CDSP_DOMAIN_ID (3)
>   #define CDSP1_DOMAIN_ID (4)
> -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
> +#define GDSP0_DOMAIN_ID (5)
> +#define GDSP1_DOMAIN_ID (6)

We have already made the driver look silly here, Lets not add domain ids 
for each instance, which is not a scalable.

Domain ids are strictly for a domain not each instance.


> +#define FASTRPC_DEV_MAX		7 /* adsp, mdsp, slpi, cdsp, cdsp1, gdsp0, gdsp1 */
>   #define FASTRPC_MAX_SESSIONS	14
>   #define FASTRPC_MAX_VMIDS	16
>   #define FASTRPC_ALIGN		128
> @@ -107,7 +109,9 @@
>   #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
>   
>   static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
> -						"sdsp", "cdsp", "cdsp1" };
> +						"sdsp", "cdsp",
> +						"cdsp1", "gdsp0",
> +						"gdsp1" };
>   struct fastrpc_phy_page {
>   	u64 addr;		/* physical address */
>   	u64 size;		/* size of contiguous region */
> @@ -2338,6 +2342,8 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>   		break;
>   	case CDSP_DOMAIN_ID:
>   	case CDSP1_DOMAIN_ID:
> +	case GDSP0_DOMAIN_ID:
> +	case GDSP1_DOMAIN_ID:
>   		data->unsigned_support = true;
>   		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
>   		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);


Can you try this patch: only compile tested.

---------------------------------->cut<---------------------------------------
 From 3f8607557162e16673b26fa253d11cafdc4444cf Mon Sep 17 00:00:00 2001
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 20 Mar 2025 17:07:05 +0000
Subject: [PATCH] misc: fastrpc: cleanup the domain names

Currently the domain ids are added for each instance of domain, this is
totally not scalable approch.

Clean this mess and create domain ids for only domains not its
instances.
This patch also moves the domain ids to uapi header as this is required
for FASTRPC_IOCTL_GET_DSP_INFO ioctl.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
  drivers/misc/fastrpc.c      | 45 ++++++++++++++++++++-----------------
  include/uapi/misc/fastrpc.h |  7 ++++++
  2 files changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 7b7a22c91fe4..b3932897a437 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -23,12 +23,6 @@
  #include <uapi/misc/fastrpc.h>
  #include <linux/of_reserved_mem.h>

-#define ADSP_DOMAIN_ID (0)
-#define MDSP_DOMAIN_ID (1)
-#define SDSP_DOMAIN_ID (2)
-#define CDSP_DOMAIN_ID (3)
-#define CDSP1_DOMAIN_ID (4)
-#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
  #define FASTRPC_MAX_SESSIONS	14
  #define FASTRPC_MAX_VMIDS	16
  #define FASTRPC_ALIGN		128
@@ -106,8 +100,6 @@

  #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, 
miscdev)

-static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
-						"sdsp", "cdsp", "cdsp1" };
  struct fastrpc_phy_page {
  	u64 addr;		/* physical address */
  	u64 size;		/* size of contiguous region */
@@ -1769,7 +1761,7 @@ static int fastrpc_get_dsp_info(struct 
fastrpc_user *fl, char __user *argp)
  		return  -EFAULT;

  	cap.capability = 0;
-	if (cap.domain >= FASTRPC_DEV_MAX) {
+	if (cap.domain >= FASTRPC_DOMAIN_MAX) {
  		dev_err(&fl->cctx->rpdev->dev, "Error: Invalid domain id:%d, err:%d\n",
  			cap.domain, err);
  		return -ECHRNG;
@@ -2255,6 +2247,24 @@ static int fastrpc_device_register(struct device 
*dev, struct fastrpc_channel_ct
  	return err;
  }

+static int fastrpc_get_domain_id(const char *domain)
+{
+	if (strncmp(domain, "adsp", 4) == 0) {
+		return ADSP_DOMAIN_ID;
+	} else	if (strncmp(domain, "cdsp", 4) == 0) {
+		return CDSP_DOMAIN_ID;
+	} else if (strncmp(domain, "mdsp", 4) ==0) {
+		return MDSP_DOMAIN_ID;
+	} else if (strncmp(domain, "sdsp", 4) ==0) {
+		return SDSP_DOMAIN_ID;
+	} else if (strncmp(domain, "gdsp", 4) ==0) {
+		return GDSP_DOMAIN_ID;
+	}
+
+	return -EINVAL;
+
+}
+
  static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
  {
  	struct device *rdev = &rpdev->dev;
@@ -2272,15 +2282,10 @@ static int fastrpc_rpmsg_probe(struct 
rpmsg_device *rpdev)
  		return err;
  	}

-	for (i = 0; i < FASTRPC_DEV_MAX; i++) {
-		if (!strcmp(domains[i], domain)) {
-			domain_id = i;
-			break;
-		}
-	}
+	domain_id = fastrpc_get_domain_id(domain);

  	if (domain_id < 0) {
-		dev_info(rdev, "FastRPC Invalid Domain ID %d\n", domain_id);
+		dev_info(rdev, "FastRPC Domain %s not supported\n", domain);
  		return -EINVAL;
  	}

@@ -2332,19 +2337,19 @@ static int fastrpc_rpmsg_probe(struct 
rpmsg_device *rpdev)
  	case SDSP_DOMAIN_ID:
  		/* Unsigned PD offloading is only supported on CDSP and CDSP1 */
  		data->unsigned_support = false;
-		err = fastrpc_device_register(rdev, data, secure_dsp, 
domains[domain_id]);
+		err = fastrpc_device_register(rdev, data, secure_dsp, domain);
  		if (err)
  			goto fdev_error;
  		break;
  	case CDSP_DOMAIN_ID:
-	case CDSP1_DOMAIN_ID:
+	case GDSP_DOMAIN_ID:
  		data->unsigned_support = true;
  		/* Create both device nodes so that we can allow both Signed and 
Unsigned PD */
-		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
+		err = fastrpc_device_register(rdev, data, true, domain);
  		if (err)
  			goto fdev_error;

-		err = fastrpc_device_register(rdev, data, false, domains[domain_id]);
+		err = fastrpc_device_register(rdev, data, false, domain);
  		if (err)
  			goto populate_error;
  		break;
diff --git a/include/uapi/misc/fastrpc.h b/include/uapi/misc/fastrpc.h
index f33d914d8f46..89516abd258f 100644
--- a/include/uapi/misc/fastrpc.h
+++ b/include/uapi/misc/fastrpc.h
@@ -133,6 +133,13 @@ struct fastrpc_mem_unmap {
  	__s32 reserved[5];
  };

+#define ADSP_DOMAIN_ID (0)
+#define MDSP_DOMAIN_ID (1)
+#define SDSP_DOMAIN_ID (2)
+#define CDSP_DOMAIN_ID (3)
+#define GDSP_DOMAIN_ID (4)
+
+#define FASTRPC_DOMAIN_MAX	4
  struct fastrpc_ioctl_capability {
  	__u32 domain;
  	__u32 attribute_id;
-- 
2.25.1


---------------------------------->cut<---------------------------------------

