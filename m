Return-Path: <devicetree+bounces-161378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77444A73DEB
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB87316BCF7
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7549521ABD7;
	Thu, 27 Mar 2025 18:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S8RO0Hro"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213621ABB3
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743099568; cv=none; b=mTItDSBKoa7gwLm22QC2KcqOtH8Gju1UK3z3i3RNrSju4qmvg+6TOP8mLEU/dtoyvDSTGY7HGtfzc+muhflzYiauJSX6rcOMykJDG8S/kBp9Dydqs5qTOUzjKKKfs3GEVLoXSPpUI4hIqqccGb10l0tkzk0MxV3GAYpdjIuEeNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743099568; c=relaxed/simple;
	bh=RAPTKl+n3VShCaRn/cpo7MxBMZDRad9KxY0XvNp+49o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iZLGqweHbWqdYi5UucIDVl0ADDBmcoEoQ1Yjb0xSvDXdAmrDDQnd7rJTyioGbAung+qShS8tuWx3sY5f/6FChuhVu2FoMBuydXZxkYyqQWYn6E9ASoRhePR3MsCUBAp3VpJZYsBhWi+6z+89TeXNnKRXKiv3xBwSJy++wHnSpzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S8RO0Hro; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52REhS84010910
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:19:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7e+PqLCySKuQUVoMyZ6icZJ9
	lYK/eLks31o5gyEyhW0=; b=S8RO0HroQUXHNwpONBNXSLuOTYfhe90WKTi88lRF
	saGQqmjs4kMuXprRYg/4eBbE/F0n1MNaXIkvfLwtW2ddWT2BpCEpEl12ffBJQbKN
	XgGSHHn1nlx7Z9WhxaBIZEHdi/tcOOCa+KoypeR34UpCJQAUnDo3ywX3pDIyF9x1
	Eeub4XISee94KYhjB3UwwZepNjFIYHLU2WJSLSbv3taNVxQgpnGtxr9ydw69y3CC
	Y7huAaA55fvdqSaO4yD4pNCW96rvkYlWSxwxiuLE1CXHsTRCavbss2kQU65LBipf
	o6rdhYPq+aX+fVX0oM5mFp8upVeSyv6EEqM0yVOXPHD/FQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45n0kqj3q7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:19:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f9450b19so29152316d6.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 11:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743099564; x=1743704364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7e+PqLCySKuQUVoMyZ6icZJ9lYK/eLks31o5gyEyhW0=;
        b=Y7SQfPJQX6kzAHj9ksMHsFSHmPo8fPwHFcDdnp/Pj0kjNThP+OD4kbIgZfR9xeISFM
         W5iZvJOFr1HuGtTRjXTqkNjMEhnKdfiCvhGAmJShih7NyC5QRB/qDjFEOcFTvDLQVb0z
         7hArb8ZTLksBPqRzrQhTEQVpbQNpGKAcOyBQXBsTYOyAoLS0rQUttNoV6GhYa7d5cBpA
         D+kID2pOysOoGYZ1+1qw1EpKhONSVULeiRpI9sx2yB6JP08wr3PU6MIiiRkoD8UCyPEI
         uaoSNA/ZJF348t2cf5FZfZuIwA/ePOukFjDDBJD6KldbsGFw9GFiYDtOZykhAB7VesZU
         Ll2w==
X-Forwarded-Encrypted: i=1; AJvYcCU6tBFb9TtFW0yP9qQCz5ISDjljARkSnXFHnB1Ml9eTm3bisLTcNvsWMY8v+YJXbznLdSK1zgKf6p6Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwScDuumxrjbs9V0o08NzTgpbZmspwVxVs7oEnEo2hpgmSzT9oD
	ArIEgruuMhVPPfYNwiQzgsc/VQpMGcWkfhd6XTSC/qniPDXLtoo01Tjgaez9OnMOz7YCESclrmH
	+PFNf2n/aIc8KQaZDVKBS2UAB/MnKa0abv6HN7WB0ySgCce8weCmaPbM65beJ
X-Gm-Gg: ASbGnct/VFWoNjBuDWBsxOTvxTryKJFVOZUR2NvKQqh8JxyjanudXn2+l5olpclx8Ke
	Z9pgFxysjNjYJRSrI1u/v4I9YJEs0k5IHG9ryHEpIASbxjxB6MJGXlYFaAvvZioJT51nUiclz91
	itqjPtnrxgP3glrEQF0EZA0EbYEBJiD6XPBe8bmhW2QC14p/7YlbpDWNryL7H86IQ9ZHJ1/bivQ
	UJ5m9NX+SQ68K3WDSE7+MV2Mhh8IOZTz4VTqei101TvcZO0/y5caNQH4ZBpZVQao1UARU3/kSmT
	YvC3cMrW2s3HQtw/XM2FaNzCOMpbSBYXYjfaqDlPb2zap5bjrm9L7VF4m+nS46jLonPecUlp5yp
	BMik=
X-Received: by 2002:ad4:4ead:0:b0:6eb:1c42:a14b with SMTP id 6a1803df08f44-6eec7a1bce5mr17610276d6.1.1743099563963;
        Thu, 27 Mar 2025 11:19:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEn6cXrQgzwmi3/4b/edFvgOGrYx3nHDkqzD1eE1vyYepJ46UWg5mVA0McAf9rHDkpvqtqotA==
X-Received: by 2002:ad4:4ead:0:b0:6eb:1c42:a14b with SMTP id 6a1803df08f44-6eec7a1bce5mr17609856d6.1.1743099563490;
        Thu, 27 Mar 2025 11:19:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30dd2ad3cd2sm312861fa.53.2025.03.27.11.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:19:21 -0700 (PDT)
Date: Thu, 27 Mar 2025 20:19:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: x1e78100-t14s-oled: add eDP
 panel
Message-ID: <hcmuxutvxz7q7ad7tuzvrputo7btmnssuqyyqlb3ydrlu5dyy3@oe23sa6wsefy>
References: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
 <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-2-45d5f2747398@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-2-45d5f2747398@linaro.org>
X-Proofpoint-ORIG-GUID: vTrOxQa3E_HeHFr43KxyI0Gt6aVmmndu
X-Authority-Analysis: v=2.4 cv=FrcF/3rq c=1 sm=1 tr=0 ts=67e596ad cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=iSdEqu8mIraFA3EoBIsA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: vTrOxQa3E_HeHFr43KxyI0Gt6aVmmndu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_03,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=748
 clxscore=1015 suspectscore=0 malwarescore=0 adultscore=0 impostorscore=0
 mlxscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270125

On Thu, Mar 27, 2025 at 04:56:54PM +0000, Christopher Obbard wrote:
> Add the Samsung ATNA40YK20 eDP panel to the device tree for the
> Snapdragon T14s OLED model.
> 
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

