Return-Path: <devicetree+bounces-181855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ADBAC93AD
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 18:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 155D01C20EE2
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 16:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2562C22E3F7;
	Fri, 30 May 2025 16:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dcweAjVD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEAD1A9B28
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748622840; cv=none; b=rPGj/HocT1xRObBhYnqJDmyGwfm9CVg9gRhyJTyggDmpHcV5DxUFdaLkmA6O9RRYVzt3mP0GCUXpSQKVvMq16Ym9RB4SzABV69lPuzD6AR1SW5p+Xl478TLUgR6SGMmR4JkASVb+nKNMw0f9GYjBWVqAy/O4zlB8kT5VYyIDfHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748622840; c=relaxed/simple;
	bh=/bLJrvclZOkbWx6KYa3dHosgr8pdwwAJZTB1U1woF5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iGtTJqYH+3RP+rIB9NgNky+WuDNW9Q6HrRyD8kZoRVoCCmPMy8fcPcZh6eWkyMv7P0TwUfYUk3+1HEVhGBrqVlrdfi9QpDGYaVn+1KTrZYhPnpyfnCrc91KpubImsAbI9zFth5tp9Nrc/XsFwYD4B270CznOnA/v54rv1v5VJBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dcweAjVD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UB95Io004892
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:33:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uCkkqy4vApGz2Fcr6sUFdDKm308UJD0nqqbHUovYzug=; b=dcweAjVDE/LjqPwp
	oTZoLRzOpQtI1JYDCMartltY2c5NB7YMlo/dTDRPndvS7pd9PPQfhgSBch3PEh4H
	oc5W8IPBmxXc8y9f0eJegWB4pykMBiCEZN8j+v7aGdrixd7VyGS2/kjhy0zo0QqA
	XUgfiq0u1OrBVtwV/38j7YZVZ/qTbTyZsx+lQ9ewM1baMS0WsetNFx0znDmQ5qfz
	BRdtzazkc4/gCaP/Gb9+EA695ygVe/1eKNTHi32s/wCYmY4odDJHX8u9qVCsOZJk
	9jXkDDFD0qe9Gq1ZUFCJmTcOm/GSbItFs5zFtondN5eTlNacUbBVYKOzoLNvsXQH
	LTVIag==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek9hyq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:33:57 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-742cc20e11eso1602104b3a.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748622823; x=1749227623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uCkkqy4vApGz2Fcr6sUFdDKm308UJD0nqqbHUovYzug=;
        b=D/CDVV6TG3Pd67zYqxrtWo9DE0NtacLeuH9K/VftQCZe3PnQaaZYhvIoVWvR81Y+Ob
         m887aOURNmAu6OIyH2uyTIwllS0yT1oxjTz9CpNKRQ9uA5/TFeyOIlRtO857CZsERjf+
         n8+rZf5fO9mZzq8/GjU9HwJh3XIn6b8jMQrzj504PkbBVXjLGghIsm0K4I2OpX7VUzir
         QlrJeGjj8FC5mWlu7baclMbNDMqM/wCBwop5XVO0tHHSs0vdF2VViG48baexA0R/95zM
         UNd+i0dHsxZWGZJndRisHr3mEfjLlTYhARjD0Z71ZH4/mY9qme3C0WJaUiYqDw82dElc
         6Wsw==
X-Gm-Message-State: AOJu0YyFwjCmXIp3tCbNFs0W/3pr0TXw3o6vun0E4lmLYDbv7L8Etmpz
	m5B2PKHc3BwcbR+JTb13uNyLHEF9Tpm25+3s5NlxocELFQGIDsVxz9boyi7squERvfEtpRTclIi
	EqmTVhU8zc3/0qgi1OJaSIuE31lUMr+H5rae/3UjJ9eYlTNMg11yOYqJc5IwIcjmP
X-Gm-Gg: ASbGnctvUXmYHgsegcGBn+rA69lPpJ0IjTSo7uFW5H1sWlZx5wWPAjIZhBIqNnhI8VB
	reacGGbc7kNwb1IH43ed8DI5cMnFLDdsq8g2splpnv27oH6ClMkXOFpkBcAaeAp74Xaa+Doxbg1
	3zF0w0Bdc+aZqNlhYITExFuL58e3UFTVLzk3Tr/WG7Dd3VlcOl39MXyG5qhPwLSmRF725q/kqs8
	I1Lyo2PhdsuMON5WoI9Ae2TRK6d/nr4QhrjWUY0EWS7WKb4NB/URZLf1BWbHiwK1PjwaPJo2xqq
	D3tDIDKEtawlgBUUzWDqh1NvVd7L10EjCfa0ydh/XmgnyNT19OTYXNfDASvwhEAZ13DWsufn
X-Received: by 2002:a05:6a00:2e04:b0:73f:e8c:1aac with SMTP id d2e1a72fcca58-747c1a48890mr3832895b3a.2.1748622822629;
        Fri, 30 May 2025 09:33:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtqNwQxZU0xTr2WITGJuLCEWHrD4jd+DcWqKzqx8uZbn4MTH/bomjNfm/KY2N3fVJbrV50ng==
X-Received: by 2002:a05:6a00:2e04:b0:73f:e8c:1aac with SMTP id d2e1a72fcca58-747c1a48890mr3832859b3a.2.1748622822240;
        Fri, 30 May 2025 09:33:42 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afeab820sm3347905b3a.60.2025.05.30.09.33.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 09:33:41 -0700 (PDT)
Message-ID: <34a9bf5e-34f1-46ee-bebb-96bca551768c@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:33:39 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/10] accel/rocket: Add job submission IOCTL
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-7-18c9ca0fcb3c@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250520-6-10-rocket-v5-7-18c9ca0fcb3c@tomeuvizoso.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=6839ddf5 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=YifSY7n-Kb6RBMa0OVQA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: 7cpOEsun52sYXeBnNSwccRzVkiUYWSgr
X-Proofpoint-GUID: 7cpOEsun52sYXeBnNSwccRzVkiUYWSgr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE0NyBTYWx0ZWRfXzxqOd8mc4nyg
 l0/H/N8Rt0JviEn6kKGQ3wJIdOab0pj/Dw5y56oiHenK4RuXI12SUDDMuKEaiTVYQZ4S+i19080
 8GglnN1PhKTZrusPz9ommjGbO+gtB8+mdJGoRE8lPhpDb9Nqb7M27LBkTjIbhSw9cqud9whC4tk
 cgToPMHHdJhjh5tAqPS993VujeYvfiqM3bGHNCPpdekn2vfZrXjCJYYJpFPjUlyrvakN6VWKGMw
 fKP4BOT6yZvJ4Trun5/e1Zq/YCUH46YNTCdFNotQ6t2ZGQHgxCfPwLsn9SPZQnl9wDmWrt+Cfx5
 fUvD5rh+C9860J+jks3gRcM6/iDubRcOffdoR187kTdFyPEDiXJZPFvaR/+VrwTjixFQ9hsRCb1
 qjOaOY4nYiojtfkOFs6CElXPi5Hy/QJxhiW4BVmk0f+33Texm7Umx90FLeR0Wj1KMQnKczYM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_07,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=833 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300147

On 5/20/2025 4:27 AM, Tomeu Vizoso wrote:
> -	version = rocket_pc_read(core, VERSION);
> -	version += rocket_pc_read(core, VERSION_NUM) & 0xffff;
> +	version = rocket_pc_readl(core, VERSION);
> +	version += rocket_pc_readl(core, VERSION_NUM) & 0xffff;

This seems weird.  Feels like an eariler patch introduced a "bug" and 
you are fixing it here.  If so, then shouldn't the origional patch be 
updated?

> +static int
> +rocket_copy_tasks(struct drm_device *dev,
> +		  struct drm_file *file_priv,
> +		  struct drm_rocket_job *job,
> +		  struct rocket_job *rjob)
> +{
> +	struct drm_rocket_task *tasks;
> +	int ret = 0;
> +	int i;
> +
> +	rjob->task_count = job->task_count;
> +
> +	if (!rjob->task_count)
> +		return 0;
> +
> +	tasks = kvmalloc_array(rjob->task_count, sizeof(*tasks), GFP_KERNEL);
> +	if (!tasks) {
> +		ret = -ENOMEM;
> +		drm_dbg(dev, "Failed to allocate incoming tasks\n");
> +		goto fail;
> +	}
> +
> +	if (copy_from_user(tasks,
> +			   (void __user *)(uintptr_t)job->tasks,

u64_to_user_ptr() ?

Same thing down in rocket_ioctl_submit_job()



