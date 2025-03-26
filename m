Return-Path: <devicetree+bounces-160902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7069BA71897
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 15:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23AE71882BFC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 14:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA271EDA0C;
	Wed, 26 Mar 2025 14:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uj+Ehe9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB27D1E8343
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742999631; cv=none; b=hRVLjvVz3YPdOJpT/YZ4DLLbpxGNp9Tn0+3rpFmhELniA7v4j7opzWQD/DsUIrAxtVcX9RTdYPjgWySc6+PgSEzBqI6OHZirnba9d13wGxacgCpR5RlgszXdqCCNVZqwbsw1T9DWAYuaDqHBmqGd+g0PP24qpMK6PstLWpRj9Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742999631; c=relaxed/simple;
	bh=BkS7+1OS9/VshqM9KeIexGqdj49CYPQmNOhsfqrgU9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YmaERMaDMysAL66hQJLDdDgoJOMJIlfpvI8feQLsAfTnBqbZDlEUJKRJo7nCqQ+T6LBLyuf9ETUn9k6Oxuon++5C7EkQmvnZzJUBkVfUWZDwmcsCIl/Q/nDNrvqnxFB+Sms/jllx2sdRokq9SfuJWPeWCMY+hFXKidYK/hlu3M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uj+Ehe9b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52Q73Hvj026884
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tUXcc9qJZqsmIvOAzGoEtIPJ
	h1UpfQKPa2r/d+C7UBE=; b=Uj+Ehe9blRTXJYuLPHz3ulJS20fXnxUrGZpVXK1N
	wn9BfLi1qbmUAcyDQvFD0rvuyLYxn8o4j3wMwJQS1oZb4gJeAaQv+/UrOGBNhMQ4
	YX+GxYOO8purBmP/pBlNRDI/gZ76pfFtisMfPP+avEd3AQq1xwIJXJ3tANTVIgYN
	r6sQE4vsFeR0PZmrNZf3G1h4jkz9WwX2MRWz2aVupi5bx37SSIos8ah9f2R62qk/
	Td21LOslx44MWUAK4GEdEMjFqKqOex/vlH87uM4VMzqDQTR77o8t5FXf5+wigmLr
	S0Jo+gs7PWPwFURf9MNl0/H15e3QS4dkbyTb6VS4u4FhxQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45m0xdtuu4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:33:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c3c8f8ab79so979125185a.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 07:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742999627; x=1743604427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUXcc9qJZqsmIvOAzGoEtIPJh1UpfQKPa2r/d+C7UBE=;
        b=ibExT89NkRuE760M5N4fPRHHBCP0KU5j7zw/za/anoWEEYB/cOO8A5uwaVlXo9cs7P
         n4A63hOi4UDyK4H/GYZxECCxAVN9O0/Y1CdOO9dbHhb+dH7E+ivVS71dBm4gBtH10ZJg
         /NzRdnsQ0qmhJ6GPznI/NFt2/c3UjhBS/w9X0qy/cw657HPg8nzBnOn3Ly78OW/gVBud
         5VnkhZ7TdBcF0ZOBlH+rNhMWHFZW6VRJxoYIegKa/NU9jSNDijVhZ6PaOm0TuTJvfbgo
         rf+cE8BIx1lEvi2dDkG6d4illr6DWbsDzsibVQWKfuCsAvQIF6suEWLVVpgh6ol45Psl
         RvRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd5eyliw7lFEBHxxQTptnxsJd6Jt8wcTkjF7R9UrCaEbYsOvjKBjhGd+dVxKE4+e4HirqbWJq0D1xA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx916zTSLNY2E/P99dT2F4/VCdVmXkWn57qdDZBx5Xg6GOlros9
	oSaP6vvLsWsZaQnreM2WcnWW5U8uzoN7q2KVuOzRsb412+N9XrwUf+Rf7vw388ZXmjase9p07zg
	kFTB0DptuqZHs1n5fKeJ+liSWOQAWi2cQqJAQesUjk7cf0w+ECE9pYHvWJKT2
X-Gm-Gg: ASbGncsLGNS0AUeGNBfgm7hJNc/Kb/zbXSLcvVGrx9s7GZJAD/SsaV0rP7os7CZXJxV
	cJdzWwZz37HDRTH21Bl5diEmtcV7bYhD8G8qowqIA2JLdocgPP0MHTGy4ieoYI7wumq6XZ18L4t
	jMV2Aw/nawhUFo35OOf8w1H8i27FzENrcGzCjCxf8zR5GFUSf+dkJS+Lj8OtoE/Jxfdrz1rBj/G
	v5Ixcs/UW3eesVlYeIUr5PLHNh6zWiOSd8T4B0i4o6tjDMlI9pjFowiw5iLjfgXYOoLyJiS47DC
	QO5tZgG33fTiSvuTmt6TFQAflPzIua+kfdOY6pZPpEjGWpp8nR1PJVPaIi08Z4lOK6I4yYm4f0n
	C01I=
X-Received: by 2002:a05:620a:28c5:b0:7c5:49d6:733a with SMTP id af79cd13be357-7c5ba1840admr3151003585a.21.1742999627358;
        Wed, 26 Mar 2025 07:33:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGndOOn6U/1aw7mrOjmDUl3e1WTG0S7x6kf/+r0QpQQBN2oiHm1XOwh+ra3+MmbmVhqaUwq4w==
X-Received: by 2002:a05:620a:28c5:b0:7c5:49d6:733a with SMTP id af79cd13be357-7c5ba1840admr3150997285a.21.1742999626823;
        Wed, 26 Mar 2025 07:33:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad650927esm1804627e87.195.2025.03.26.07.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 07:33:44 -0700 (PDT)
Date: Wed, 26 Mar 2025 16:33:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <kj5dyy7bclmkft7x4hdpzpo7n35cu5nkpksj47phb7jt5lceab@7fb5i6gluqwz>
References: <20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com>
 <20250324-sm8750_usb_master-v3-6-13e096dc88fd@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324-sm8750_usb_master-v3-6-13e096dc88fd@quicinc.com>
X-Proofpoint-ORIG-GUID: VKUNvmZBPAJQGZsirceflhO1vt-4L-qR
X-Proofpoint-GUID: VKUNvmZBPAJQGZsirceflhO1vt-4L-qR
X-Authority-Analysis: v=2.4 cv=Q43S452a c=1 sm=1 tr=0 ts=67e4104c cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=4xIHL2cNR3voeXxo6gIA:9 a=CjuIK1q_8ugA:10 a=RVmHIydaz68A:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_07,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260088

On Mon, Mar 24, 2025 at 01:18:34PM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  10 +
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 297 ++++++++++++++++++++++++++++++
>  3 files changed, 308 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..b18aab968122683e2e87287a4b570321d376870a
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -0,0 +1,297 @@
> +// SPDX-License-Identifier: GPL-2.0+

GPL-2.0-only

> +/*
> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +
> +#include <linux/regulator/consumer.h>
> +
> +#define USB_PHY_UTMI_CTRL0		(0x3c)
> +
> +#define USB_PHY_UTMI_CTRL5		(0x50)
> +
> +#define USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> +#define FSEL				GENMASK(6, 4)
> +#define FSEL_38_4_MHZ_VAL		(0x6)
> +
> +#define USB_PHY_HS_PHY_CTRL2		(0x64)
> +
> +#define USB_PHY_CFG0			(0x94)
> +#define USB_PHY_CFG1			(0x154)
> +
> +#define USB_PHY_FSEL_SEL		(0xb8)
> +
> +#define USB_PHY_XCFGI_39_32		(0x16c)
> +#define USB_PHY_XCFGI_71_64		(0x17c)
> +#define USB_PHY_XCFGI_31_24		(0x168)
> +#define USB_PHY_XCFGI_7_0		(0x15c)
> +
> +#define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
> +{				\
> +	.off = o,		\
> +	.mask = b,		\
> +	.val = v,		\
> +}
> +
> +struct m31_phy_tbl_entry {
> +	u32 off;
> +	u32 mask;
> +	u32 val;
> +};
> +
> +struct m31_eusb2_priv_data {
> +	const struct m31_phy_tbl_entry	*setup_seq;
> +	unsigned int			setup_seq_nregs;
> +	const struct m31_phy_tbl_entry	*override_seq;
> +	unsigned int			override_seq_nregs;
> +	const struct m31_phy_tbl_entry	*reset_seq;
> +	unsigned int			reset_seq_nregs;
> +	unsigned int			fsel;
> +};
> +
> +static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, BIT(0), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, BIT(0), 1),

I suppose, we can not expect to have #defines for all used bitfields?

> +};
> +

[...]

> +
> +static const struct phy_ops m31eusb2_phy_gen_ops = {
> +	.init	= m31eusb2_phy_init,
> +	.exit	= m31eusb2_phy_exit,

I think, you have a missing .set_mode callback here.

> +	.owner	= THIS_MODULE,
> +};
> +
> +static int m31eusb2_phy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	const struct m31_eusb2_priv_data *data;
> +	struct device *dev = &pdev->dev;
> +	struct m31eusb2_phy *phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	data = of_device_get_match_data(dev);

device_get_match_data()

> +	if (IS_ERR(data))
> +		return -EINVAL;
> +	phy->data = data;
> +

-- 
With best wishes
Dmitry

