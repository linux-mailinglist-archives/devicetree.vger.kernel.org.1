Return-Path: <devicetree+bounces-226911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D65BDCCD3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 08:55:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CE9C19A78A9
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 06:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2C8313287;
	Wed, 15 Oct 2025 06:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QqUadTo0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01842D2499
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760511318; cv=none; b=q5dSG7VygPzw4Wz+HICjJyJBqVApzo7/ba4BclnyRuAnuJXEWHIuCDaS7PwHqsL7KXg/9ucWuB8u7V4OU+3GrMtHIGx8nTU/Y3xUCj7I4LuaWMp5xQA4mhyzNRKif4Q6A9ezrbwfxZMos7Abn2WfO8Dw4LyF7AWuBkjsaEXR3No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760511318; c=relaxed/simple;
	bh=sh9A9FOiaFSj1NrSmBjEHeyuo7+m+MPI2zTeMPcWPMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FMFLgKM9jor68JX9YDhYn45m2+A3pVbH9+Uv6JbZC7QFROSP/hKFvcuvC4cOqJsY/aLjE5kbDbuuFfyajBGnscg2332Bv+rEQb3mRJldHz6dmGq35rnBz8cyvn72Bh7owPVImRE1SL+Q5vw/XzmvpvifXavsZtly9qDoWmArwac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QqUadTo0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sBS0003535
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:55:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TXB5nJozBeUSUfmi0Lz+MYki
	JUeY6V0tmx/cboDkFLY=; b=QqUadTo04FZBGSEHNT3wH2hmQAOObsSR2bX3r/Xw
	jdd9pY1qeVHvYx+42EQ/WitzbGb3MmYbcIDGFXo1CFkXWaI4B4GchmcUnQXbJV/9
	BH86iYFa7Jm7O4wdqMoC5sQ8L3ToA9QgFQkpPva6wp6lDm4KLWSSnacqJdnPSYvy
	Y/vFak9EgeeZ7o+68+xUYY7IqrOJ1OHstbN2mooGEYLdDXDosjQ8dB6G0xju7O9C
	5Yb53L9tL9dOYF1az+3paNWe8eagwYY/iOoemckuHekwFkpZGd4MTXoBFrxa//E0
	umU6/Truog4dPnX2MOe7QMtwyF7YZf4jsf0FLHwO2nLT2w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8hyq6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:55:15 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-339d5dbf58aso23185545a91.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 23:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760511312; x=1761116112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TXB5nJozBeUSUfmi0Lz+MYkiJUeY6V0tmx/cboDkFLY=;
        b=VOSr1wYSQgPlMQ3ljh2dd9ejYGNrXnr+6wISP8z29m2U+QPr/yY/mLeEKFV7JzmalY
         hiKWPJIkJ1+z6WllPK2EoTSgnLZQTX0MOdrbABQ5/ymwMvkvB1Wo5+8p4VhuTcfBW39C
         M7dBNtn4iydL5NheuLZP5uP4FlHT13AXEu8ewWXTdIdJ1ytEPfrmzkRyJvCt2hH/tQPf
         XxEngbrhdPU2IPmw4MjqZF2JsqIqnvV3JmhSc8tDnKCsmHYHLzsRrLjcp2NIOZVES0eO
         IRFOzhFjtsLK9aqetV1siuD/NF2fKHTM/PGunySbQD9I0lkgyRFK+bJVrRiLycQ+iKJ4
         R/AQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjcBNwHBytsOuMcxwIgTTWHWliM3PKghIXqYtf7MG0feqXCcQewt6K3Gd8dQ7Y+sKXl+/cDk+OhL04@vger.kernel.org
X-Gm-Message-State: AOJu0YxCHb8sZhi+sd9hm3s3Onr1O5/xJjTzMJdsfcxS5PzRgJsOCahi
	B2AJWZNhHVHj/B/Y8dp4ZVUbgrjYptvux4ENblHsTnk1caz6+iACBAYZH96M+DPx0tOaNcfG+Re
	uhye2WP5XnCURXRp0LkQA9Ph8JM5BnDgSrdpdHswSM5UwWu9au4UH08l5Q0f12fa7
X-Gm-Gg: ASbGncsyGxyh19sszFJphsj0KzdLYjxUU/TTAzdvLwG36tXWh9+KceLob5ffn3QpzAj
	G5uq4AJvohjTNVOBux0pno5BJaZfiBBUBgzU9jmoAW2in0AH/0b8YoBPjP9oTG8wyMAgs99whEV
	SnpOcYc4aruZFZ6nuD2ja4BRfAjxL9v30XuaWbCR5Cm3pQqcG0U7yKU1oNxVjBX/JP1Y4fGlH2a
	NjInivuKTQ/rTnnLB+ZqalpM9QRSxvZUevikeVFXHmWh3oWdEBLwBdZG+yVJ7snKJdDo07s/do8
	2gmyZ6KdsZ5c2ubDGsuVmLy/K4GiR2/ZO+y0pEOSw63SCXMRirv76ZEk5uFGjTrlWEsyplewaiI
	+FAXtMOfTNGs6ONKYUewsrZ6i33jLUXqr
X-Received: by 2002:a17:90b:3ec5:b0:327:e018:204a with SMTP id 98e67ed59e1d1-33b50f85081mr37168976a91.0.1760511312007;
        Tue, 14 Oct 2025 23:55:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7PQa4vHNUgbJuh2uPKnDF3CrlxsqSIGMWHhVoDwTgNv+/9QY6DRirS1HikY5vDY9hqKN+Rw==
X-Received: by 2002:a17:90b:3ec5:b0:327:e018:204a with SMTP id 98e67ed59e1d1-33b50f85081mr37168927a91.0.1760511311418;
        Tue, 14 Oct 2025 23:55:11 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9786e602sm1207949a91.11.2025.10.14.23.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 23:55:11 -0700 (PDT)
Date: Wed, 15 Oct 2025 12:25:00 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Subject: Re: [PATCH v16 07/14] firmware: psci: Implement vendor-specific
 resets as reboot-mode
Message-ID: <3978e740-0589-4872-8f2f-1162084d3818@quicinc.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-7-b98aedaa23ee@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-7-b98aedaa23ee@oss.qualcomm.com>
X-Proofpoint-GUID: zZCL6ELmmdSs7oBGApTETCKYzB_MzPkf
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68ef4553 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=BmsMZzT-mW5IMwsoq18A:9 a=CjuIK1q_8ugA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX/OPP5JbJBdvV
 ij+1TWvZ0B1o1Wjz49jgaxKO+9p6n3MERjS8MjLt92IDGGed/kT3A5Dqh0KTuqF7CI03OSCI05m
 /4eKAPTZVwWlLTQF/KdD5m6m1E0EbVLns8wQRqUA9ORewsFbmUKdOp8jk0iJ5kQRhbQX90CcMe4
 pXXCK94+JHesfVmuivZVmm3rlDuL7/ZdbIIWQSLvr1Gi3xIN8SjgKCgmURr4dBd0rrIGtARRsF7
 SyusO4b4XUnaNKj8glqmKkpy+5yF62rjW+0XdJPaUzK+V1nebJ10ZWPPiB2JQy2/lnRXc7CHe/6
 HJioztlsJTE9Rx70fyEc+Svx8eZ+093A9bCqdcGFOn0jhjk7c/PDnJGX6nWdIzVTB9UfEPLYOIo
 uGsHdBnwMV2Je6F9Y8pJkUVfT9S4YQ==
X-Proofpoint-ORIG-GUID: zZCL6ELmmdSs7oBGApTETCKYzB_MzPkf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

On Wed, Oct 15, 2025 at 10:08:22AM +0530, Shivendra Pratap wrote:
> +static int __init psci_init_vendor_reset(void)
> +{
> +	struct reboot_mode_driver *reboot;
> +	struct device_node *psci_np;
> +	struct device_node *np;
> +	int ret;
> +
> +	if (!psci_system_reset2_supported)
> +		return -EINVAL;
> +
> +	psci_np = of_find_compatible_node(NULL, NULL, "arm,psci-1.0");
> +	if (!psci_np)
> +		return -ENODEV;
> +
> +	np = of_find_node_by_name(psci_np, "reboot-mode");
> +	if (!np) {
> +		of_node_put(psci_np);
> +		return -ENODEV;
> +	}
> +
> +	ret = atomic_notifier_chain_register(&panic_notifier_list, &psci_panic_block);
> +	if (ret)
> +		goto err_notifier;
> +
> +	reboot = kzalloc(sizeof(*reboot), GFP_KERNEL);
> +	if (!reboot) {
> +		ret = -ENOMEM;
> +		goto err_kzalloc;
> +	}
> +
> +	reboot->write = psci_set_vendor_sys_reset2;
> +	reboot->driver_name = "psci";
> +
> +	ret = reboot_mode_register(reboot, of_fwnode_handle(np));
> +	if (ret)
> +		goto err_register;
> +

minor nit: np and psci_np reference must be dropped since we are done
using it.

> +	return 0;
> +
> +err_register:
> +	kfree(reboot);
> +err_kzalloc:
> +	atomic_notifier_chain_unregister(&panic_notifier_list, &psci_panic_block);
> +err_notifier:
> +	of_node_put(psci_np);
> +	of_node_put(np);
> +	return ret;
> +}
> +late_initcall(psci_init_vendor_reset)
> +
>  static void __init psci_init_system_reset2(void)
>  {
>  	int ret;
> 

