Return-Path: <devicetree+bounces-227348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4D6BE0C42
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 23:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBFF53BED90
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DE12ED16C;
	Wed, 15 Oct 2025 21:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OLq1ZTSF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA1A2D374A
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760562731; cv=none; b=VHnirybwWRxQi/s8OPObhiQPveVcl0vD8Lwimiidw66SwbFb7cBCtURZsFqbt5mI5ilapDVvTOQWDPpeP7SQ/GvUsX55kIkWacBH0AycItkSiMh/07jZh/4ydLB4O5+Sx755kLaTzmbb7UnUE/4UveUG39mfgV/9lQpS0Sgb1vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760562731; c=relaxed/simple;
	bh=LWv2ta2RyH+poy61wit683v7fn0Osa1/eWBRxGxfyNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pHPS9UNNf0QpcDZmRVIvrM5d5TkReMwPBrJY0Cc0eZBmXOS0kypFH4zk5FoDd0qYS2CQv21dtmjUWu8mkqu9jLGrnbJ/n/yuCvNLzp25NGpIZOmNmzSQNOgmOK9uIjgY42u4c/a1559x7sgywnBtESFmW1Ta8sXTiJnXFmE81KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OLq1ZTSF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FJnsJU014748
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:12:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5QarBm3/FBTaPINCPchmgBMz
	MFWymhf3LhCoHGlEe58=; b=OLq1ZTSFcgtqTvn8xWUhmUuzlC1iw4+6plHbX4cZ
	8Hgylely1tQnUINm6rkeimpthUAg9vE+5M6an8TRJ7etQg9wY7HKGEv7qVLP4IJe
	Rf7/GQQSGOXLtALeOykNbmP6h7SGIcErchxu3cYmUET46kqf1MoIcx/lN6lmfIiv
	BjMYT9opMxmqpli+PskjQeE2hmhk8wzBF7SSn93UZsvb/xXsRZ12v/EjmIjsKHgq
	J6Znd1YymEoftCIZYb8Hj1QsfBJRnZ6hALiqTnMpatM0aHPc3I7UTyGTnuVhD4FQ
	XfOgEokYz+TyHieV52gUu5rfChmVrvtfj7S7n1Jke6xJug==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbj5xnh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:12:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78ea15d3548so1218416d6.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760562727; x=1761167527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QarBm3/FBTaPINCPchmgBMzMFWymhf3LhCoHGlEe58=;
        b=boKpCggRw1sHSo1BPeFqcXvmbBQkDvMie00Uma5XqPI05j2jLJYpfvyH5j2PMFFiC9
         aI7vwIsd37LGYUR6NH6kcnlccQ0YgbdhUc26z13DHejvjQ4KwXEDPsLMHDi4432CLB9n
         Z85kL5m9gNdtUHVFXnEKT4r6T/6IU2DUXCrfX/dbEs5h2tosIfM9NklNs0bpjuycWBtx
         0ro0IJFmJ4JnPXkPeJHIL3cccCtm9324ArycHrY8AjdI9lDPNmuF1IDdicDVnjW01b1/
         lYn1790nkNpJqEXa5PVhs2BXA1LkRc3Ran9iJDyhS3++Uh8aOv+1OPcuzNo8ctq8ZxvI
         JmEg==
X-Forwarded-Encrypted: i=1; AJvYcCUVUa82iN1UoWqgYgq/u1r97fZbbgiGrZgHHQPRn0GvKl3uao7UKmnEp7mF45XTMRUFdUxPMjXWU8AT@vger.kernel.org
X-Gm-Message-State: AOJu0YwTIXUZWrHPzfOA/S6QXqIKfKvu4d9ZJp6h/lPDVoNzY7yYRDVq
	aFCUz5zfIpVc5slkFX1Adm+ydkyWyrK80JJZKECr8ovIbA/XNyht6iYvJiOraeQFEWrfjIE7Ak+
	A6iMyX5wYt6TFyVRUCd9AoDLeXvKLdxQcbERfsxJzhNIOUCdb2PGSuAMdoCChHtin
X-Gm-Gg: ASbGnctfq33RUVmgqAOIJ+Am6vFiqhVFu00FUtSI4TADYrhYUmPoTT24tIi4loRiNzF
	6JE2QnZm6N/VruuAeDPq/58y98wvBvjEaF+KmErKZ1RB2BHoeHWPpBo0jc/e9tLkzzEalFY2xeB
	A0WXAGnfPlqVSgR8IqD0lf1OJC+hsy5zurDYT2Y4nA0xrlR992o6disS5/3pnjVDwnJBBp0wWE7
	tIYu6FfFX60QUj5RgmWPdmTB1zJZxnwIUtwP8LyhKltyPtxl4HVUIjFlTfqbV3vnPcxEvxnfEIf
	P2wZ/ehmQBYtFJ5o2gX5sHlXwg4RFAUquEC0Fc08izmH0595B6v/waRPvQ8uQ3vQAF+qi4yYQW4
	1ZwEhSG9XS8KsZ2Xv/+G6+yxuBGmScAd5dKqpY4rGG2QWUhKtyeIIZ4rvYrrbvnSTZQTQjRFVNt
	C9oZZOsC7vnjk=
X-Received: by 2002:a05:622a:4c18:b0:4d9:f929:1531 with SMTP id d75a77b69052e-4e6eace963bmr482626391cf.23.1760562727103;
        Wed, 15 Oct 2025 14:12:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0LHBOSbJEn+k23yLcJqtRiqQ+DR+KSHqYFpB6WhOFy5EPBlYMUm+Vj2w/1rwTr8n8KTdMLg==
X-Received: by 2002:a05:622a:4c18:b0:4d9:f929:1531 with SMTP id d75a77b69052e-4e6eace963bmr482625951cf.23.1760562726575;
        Wed, 15 Oct 2025 14:12:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea44326sm50043791fa.52.2025.10.15.14.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 14:12:05 -0700 (PDT)
Date: Thu, 16 Oct 2025 00:12:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/6] phy: qcom-qmp: qserdes-txrx: Add complete QMP
 PCIe PHY v8 register offsets
Message-ID: <7knbppndo4pbrbowacjbes2z6suigxwdlv6ejxib6lgkeuqrrt@lozxd3nvpf2d>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-3-84fa7ea638a1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-3-84fa7ea638a1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX783Lcgs4J8my
 NDuf7favw8NFLIsenJydNJy5+W9dB8ATklrFcH2TpVpBzHLyxaFaqotarwYLjZvZgFOpALiaZ0O
 c5qVuglvdNkXxE2JY/7PLwCt7mEf4DxA8GALEgWvbFJhKk/N+mK8FEbTCVQWCA0SWBHu9FE8Y/e
 YvgV5y+n2iDQiIMnoOIecZiRT7VyjHtKb4T3pJVzuRBoVj5/hkNdn65KdFLJY2zZtKcArsu3cqv
 Hpx0XlQYHCpf8+SjudbiKxTonIVAtY/v0nVoQcHjdzA81TeqUWYffFVP6RJWqzqYMT4r3tuDoIO
 z+nndSIjRqVN1UUFkRq9preI2RhPHDpKYrDWVNSmlPQFGvlOKuFlhNGvLMYzijKPi+v4aFncPvh
 SvQNPleEBNnLMASUslQ4ViTmOiKeng==
X-Proofpoint-ORIG-GUID: cNlnrLdQm2RqL3QHTmiifupWmK3ZIkCB
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68f00e28 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=GXffbDEdBvPQuLycA38A:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: cNlnrLdQm2RqL3QHTmiifupWmK3ZIkCB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On Wed, Oct 15, 2025 at 03:27:33AM -0700, Qiang Yu wrote:
> Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but requires
> a completely unique qserdes-txrx register offsets compared to existing v8
> offsets.
> 
> Hence, add a dedicated header file containing the FULL SET of qserdes-txrx
> register definitions required for Kaanapali's PCIe PHY operation.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

