Return-Path: <devicetree+bounces-247519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B814CC8472
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6C2E31AA9D3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044383845C3;
	Wed, 17 Dec 2025 14:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GNkJswRu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ryugn08E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B783845AA
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765981748; cv=none; b=T1UUAwvS12AUSTTLD+Ie15y6Jsp261rC/JcqqcqVBXoiyJJYUJZK6HqQH4DQLMQuj9GIoJZiBeHhf9nqMDY3cqeUQN+cM6RpS4KY6EmgGksVbLoxlSjVKheqbhtDEj18fKuuvk0lzQjoAt+QmQ+dKQIqeSi5yZC4++eKpMKIXTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765981748; c=relaxed/simple;
	bh=ERok2CW7sypEcB+fTJ+rHSXjCVjmsMgp5MkJa7SgXlA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u6Qw0VQGYpdOJeOPIwQQt2TQmZos1sVht54BkYdCdKtoPZgI6rIAMQt//ngcDEk+TKt85XJ3NhCo6zWn7luo9DOVG8lazPOQVifBYrWeQ2B7skSQrKAQV/SLxpM/UOrFMqUqqztfruqDFqkjQ3QU9aqhbUiaZD6vBEWHH3CMvbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GNkJswRu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ryugn08E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKrTP2673986
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:29:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GWnXXLZPwPcjYmJ6eTq9/Vxo
	0TPoq/BX97qxf52v9Gc=; b=GNkJswRuSJO8YOrhcZH5ViQhmmPlUTx1wZdL2JzO
	2zHRAgvQoAyrOWU/4pfCWyvZVw9mCbtmoOZ9HbSLh+Vp268RaIF2LPiu6W+slfHl
	XShiE1MaeTzwzXGpWbb1bt+5rLSrMvceqabLXdIthQljzNMZi4QAgM1TGA0xS3/4
	CzkZiRZc4nrA7f+gulEnKefpryeM1eWkN5joIOkI7yAwMXGKkM+5YbhLevEll3Ck
	uZ7BRCZ13KmcdIVHWBmauJFa3RBt+gYSMV2HDnNIYORfi6bOBtlLL2ZHPAYaNr4O
	gaEzUbqrhrpkjWWewtV+NcUuS8iTZ1X614Ol3CEHsy2sww==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3myj1xe2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:29:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a344b86f7so115253376d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 06:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765981745; x=1766586545; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GWnXXLZPwPcjYmJ6eTq9/Vxo0TPoq/BX97qxf52v9Gc=;
        b=Ryugn08EElPS1mBSbr0s99v3hLt0QO8BNGAW88rF9eS3fwBAUqgaCLb77fWsu5dgKC
         efziWPTpz4/V0SlsyWjAhXAgBtGohh9UCWj/6Oof9QnHVWSdYaU9ELNfIuXJKJs3vAXv
         HQOUX6tXMG8HkOOCxR+ihq0OiMS31dbig3sbklJ7hcwz0Wfolp+0cidglQfT0nort6ce
         6o23Bf0b0BHlSL8teYA6Ba3ZDG0/H7hMBzdZqWwJgJnIXMJhyBp5caokYujTogJUocIA
         WKt3bp0UIRq4OXudcD2x3lvjq71iEpHkFlQXhT0tlS8E9tpYiZaAb++q/ZqFRIhYI20Y
         JZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765981745; x=1766586545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GWnXXLZPwPcjYmJ6eTq9/Vxo0TPoq/BX97qxf52v9Gc=;
        b=v9S3SR46Rrlt5Jq2pdbPbZNl7jqVdsdNSD2tj3GyRThICIFSUv6mkA8JNBXh+yn8Yj
         sDsLb51sbCMBOSS3U6Zjny5O+Gs0Mmt2AorI+KePuPBpoewUdJCUh6RGgIgv4mspYc/H
         xspBykuzAWGs2ury1wCnbXm2JfrVxPEb0DFQZpxDHcjRNN0xS2QD/BA8K00JO3d+rK5b
         /5aB2hnzmIvWHTMQBXFtXtegzhVjGaZQOT5x0W++NGmQGQqDYhOmZYeUdvM2hy75MG52
         WEWaUyYydm4EhFxiCR1rw2mMUPQX0WeR5LrQgsrAzWHrPboc1nUG5Cw04Und0s/Q6i2y
         hbfg==
X-Forwarded-Encrypted: i=1; AJvYcCWRCwyZkNTD+1oeCbGsZ1ec/m/5lLWwK401Qeu2IZotjAIUtvy96IdvdjDOkPlTzvwyyFhXZfX8GVKH@vger.kernel.org
X-Gm-Message-State: AOJu0YzaeU8xQ43C8sQEiutSmSXJGtgmlGS36ZwlPBtyrpP4mvgvsdnW
	j2SWReuaJ4WNI2n4+4AVKM59IPYFrXi2dw4hIg++Tb8dhHp3XUxGq6A23Xk7OpbgA+uCzzI2c+o
	4GEeH8CugEQYIAR9Qjrz+XwWLO0JYYK6+8VxWQaED9pBsamL1bk5sLP3qU07QPcfe
X-Gm-Gg: AY/fxX7IbUkq9uCBjhWH2PenSOEd8O7A0VArNgzpTVk0vvOzLi+v2WkrOHLxEgfKh3U
	WUlBnbYVnFxMY94ROSeLzy8WMhOLDLQNKgFc4L6GC/4YtdJCAZNg2qyyXGvUTWPdkahjsKbiBjj
	5R3EFulmYPK7YaVNhs17DYHkegZBOKjJCB8DC9YaJl/FNGqWbEHxCI+piENkJoBLXrLTNMNa03U
	T0rgwXJxQSQy12Dg9sfrIysJxIb9Flz1atQyJ/u0IfBMZSXYpjleTbI2mxCizD7VskzNpkF9HcL
	Gc5OY0UTEtQs/Add5hgUoEGNEOj9D/uES4PBdvr3UoHUNQ+sixoZC44MR/RyYzdHKGFRM1UlWdX
	cYn4WGHHmGlUKl7LlyprOqxdNbT6NIiaTeE9XiaVrMvz94RPiRM5B8vDJp9lk3dpoZc/8bPTOex
	65EI5OEm/B9pmwseBo4FVHdyY=
X-Received: by 2002:a05:622a:2c1:b0:4ee:18e7:c4de with SMTP id d75a77b69052e-4f1d0622d74mr270978231cf.78.1765981745060;
        Wed, 17 Dec 2025 06:29:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHoDLIcQPG1FuC3FZZauVp7VVEdRE8p0W/nAUBeErKUh077HE+3CL82M3hNdbKfxiVebE0Aw==
X-Received: by 2002:a05:622a:2c1:b0:4ee:18e7:c4de with SMTP id d75a77b69052e-4f1d0622d74mr270977621cf.78.1765981744502;
        Wed, 17 Dec 2025 06:29:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da1a4a1sm2429362e87.40.2025.12.17.06.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 06:29:03 -0800 (PST)
Date: Wed, 17 Dec 2025 16:29:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vivek Kumar Sahu <vivesahu@qti.qualcomm.com>
Cc: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/2] Bluetooth: hci_qca: QCC2072 enablement
Message-ID: <xv7zlaoymcuq5kirrgu3thp3trmbdry5maraz34v4tkekinyaf@wgrfk7ukiilk>
References: <20251217112850.520572-1-vivesahu@qti.qualcomm.com>
 <20251217112850.520572-2-vivesahu@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217112850.520572-2-vivesahu@qti.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDExMiBTYWx0ZWRfXws+BxMHesMqt
 G6IttyPq4+bAWd+y6XCBjW8HAkHHq70JuTzy0spDRcM3V/B6SBjBNsBwho99KCX+IbpAeU/H+/f
 HVKbKYT56FT2u3oiTq2F/bDJo3pslN6VCAAPriPwVgtqwocc2jAny5rDDe4D5am2BJhaEtFQRUa
 SyK3RimeNWDOi5F+gdSHUpIyYpqaC1ByZ2Ot5G5daYORftmME+xl22OELH3HtHLlei+9K5Zm1dR
 RYlrob1MsqPRny4ntHbjoFHQ5dQJcpeQTML2yYoRQ6OrG+itdAtxV1e/6hEmo56Kz7oTLp4TV4h
 Wo653j7Ci0rOtTo1g15SMT8McMeZQgIsPeXqIjq6Uc1zZM2jexLEI2+5MdTKy9CLLpruEjUyhpR
 pgC/k5vpp8jMfsfh3hDSuwmycp6u/Q==
X-Proofpoint-ORIG-GUID: JOs9MGxrpq5BRiIhCiaDrGacUxZG9Mam
X-Authority-Analysis: v=2.4 cv=CtOys34D c=1 sm=1 tr=0 ts=6942be32 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NUmHm4JO40cz2a15_LYA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: JOs9MGxrpq5BRiIhCiaDrGacUxZG9Mam
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170112

On Wed, Dec 17, 2025 at 04:58:50PM +0530, Vivek Kumar Sahu wrote:
> Adding support for BT SoC QCC2072.
> Set appropriate configurations for BT UART
> transport.

Read Documentation/process/submitting-patches.rst

> 
> Signed-off-by: Vivek Kumar Sahu <vivesahu@qti.qualcomm.com>
> ---
>  drivers/bluetooth/btqca.c   |  8 ++++++++
>  drivers/bluetooth/btqca.h   |  1 +
>  drivers/bluetooth/hci_qca.c | 17 +++++++++++++++++
>  3 files changed, 26 insertions(+)
> 
> diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
> index 7c958d6065be..7eb095db4a1d 100644
> --- a/drivers/bluetooth/btqca.c
> +++ b/drivers/bluetooth/btqca.c
> @@ -854,6 +854,10 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  			snprintf(config.fwname, sizeof(config.fwname),
>  				 "qca/hmtbtfw%02x.tlv", rom_ver);
>  			break;
> +		case QCA_QCC2072:

Please keep the file sorted. Find a correct place to insert your changes
rather than randomly sticking them to the end. This applies to _all_ the
changes you've made here.

> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/ornbtfw%02x.tlv", rom_ver);

I hope to see the firmware being submitted to linux-firmware.

> +			break;
>  		default:
>  			snprintf(config.fwname, sizeof(config.fwname),
>  				 "qca/rampatch_%08x.bin", soc_ver);
> @@ -929,6 +933,10 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  			qca_get_nvm_name_by_board(config.fwname, sizeof(config.fwname),
>  				 "hmtnv", soc_type, ver, rom_ver, boardid);
>  			break;
> +		case QCA_QCC2072:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/ornnv%02x.bin", rom_ver);

No board-specific NVMEM dumps?

> +			break;
>  		default:
>  			snprintf(config.fwname, sizeof(config.fwname),
>  				 "qca/nvm_%08x.bin", soc_ver);

-- 
With best wishes
Dmitry

