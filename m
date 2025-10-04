Return-Path: <devicetree+bounces-223614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C71ADBB89F1
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 08:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AFB64A33BA
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 06:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12DFB21FF25;
	Sat,  4 Oct 2025 06:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fTL4R9Jf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1151EF0B9
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 06:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759558811; cv=none; b=ViunfrTgx772iruOwNGpdJJCmCuxqCn74CdmKBZPlIQB72iZrSEEtCCnMqFspp1B/gDsB2w8SH5qrD1AYsu8MEntBDO2vDj0bEBGiIXwwV942Gp/G4yaE5zqQ8i7BG4D8+3cXKajgouR/TSsW3zwH+whP02sXVfW5/Km/lHh0/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759558811; c=relaxed/simple;
	bh=E4TpaqU2JrKdPWSIkXzozlfkEfDOp9hCavV8plMCWXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mXemuED2idJGE5FwRVZnJU3IGJDRmTd+iL+ODLhhfo+LDUdlCblc0UpfeA/HMtrNA62Q2qv6wijyXSnTVTYuQfBnCU8C4OZy1dAtDkJAUb0qrnfIy/5AXzhhUgNr3/+QUYcAEu0/5Er0+fdGIghVIOXvgkzvKHGIMx60ChzwUhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fTL4R9Jf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5942pnqp004212
	for <devicetree@vger.kernel.org>; Sat, 4 Oct 2025 06:20:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8m4k7jTFBedu+wLB0+uZwOmi
	JaNTVqtHpAOlLIi7cx4=; b=fTL4R9Jf0MrmZ6wcWUb2QoCkcsURGAbXIo6uUyFh
	z0CFCo3eqqzhyF1X+DX6pVXLRBY+VBGg61MzFXs5ocqPfVVdLPhzwuUAP3V8aaf9
	dpJ+PN29CC/zhpg4EaGdVDzCbtc/Dl5/vY2h5PHbLGzxce7lTHpMtjpkQIT/tGNM
	aEZO49h/OwzEgyGnyOjxynMXIpu3xdlCfN9No1vISuY8mz6hNKHnW8C+juPXmxzv
	99c8rVMIrRfBIDT679m5p7VZfOuc3AtvS2maeRkHvmkijY8NBpNwmDKFeZ1ySGmY
	+ShMlp201YvYmIhyC5ZYNa7B917jCdHISuaQJPMSzg3xxw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5x89d7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 06:20:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4de801c1446so68716071cf.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 23:20:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759558807; x=1760163607;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8m4k7jTFBedu+wLB0+uZwOmiJaNTVqtHpAOlLIi7cx4=;
        b=oB3Ekz85zYnlaXOCHn85PPzT/DhkreFlkohQXob1DllV7OUNf8VjCHuKNqA/1mygzl
         V21sD8i5wa+EuNPoPVaKFdzr1o8X8VIrGlV1yS7V7VGUjmoKOeKW/XCpI/t+IDR9u9px
         QZk0PafVMYAEKFsGcAbK2QOMLH7D5vGgc19yQhxjn8I9OScmTgI0/THXtGupFLpISYOT
         qn0SQ/DRKYzFRBsmXeP5SmqOfSuirVodBixzxxdTfujAXkemUIvidc3uv7YzxYfwhDv5
         AuJm+rzUPDocxZSXO1AP2oXwS1+Jwpzpdid3kc+BVzw89AC+twph1pmrl7jkVKLm4iAw
         eiVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIpbFeqILN/Gl875XbNUVTtQ4pX4h9BO0nG7CBTluNorwb8LgZASclaSOk13bVicECDs07hM7gKPZF@vger.kernel.org
X-Gm-Message-State: AOJu0YyS2Qw5MTcPig45jCsn3mBtekCMZNbUBlxuE0YwcuGtD+3Bh4q4
	B3tdfyw3VMe0rCrmQI83c89g8Oyop6c+PbX/rzf99VL2NhtjxoBcwFffP7XhzOnP4WYSzpKRek2
	m7rsabcK8GZFZ77WqBMdxIfl5GYeFhOkwEUOCcRajKLxK9wJ28vp1F+oFUoYPWDeZ
X-Gm-Gg: ASbGnctvYNYdQ8ZMz86soGPLXGlo77moalL+xFCx3Ewdj6kturc4XKa/jUyNK9kpife
	G21/QDh5+rrTRNT6b5RmmLUGfop2wPLXQRhug0z63X6IfLtyZmI7XFO2Xc80rOpMzLpz2yK8PD6
	ei9cKiQeadTwMLjcemtNCsF2QNJABmk9eoHjQeW3v8AbSzTaL06xojdPq4w1pNeaS9nLhfglSCo
	Dy4ZEHoiEEquIcEASs4coJ7dnzD+KYaDNHdH+fa5aOxC3Qgo5/Yvb0UAFnW6qqApgvK7xd5AZfZ
	MYxlLs2FedWNiV9JIbWhMB78du/1Q04YsNVLYGIfsV4zweK6MaUnkLIelJkGheTzYS5ZslRWPaH
	VxpIsKG6N9GHP21BwT015SaSF+jPfVya4pbXd13ylQsmuau2Z+urphUPaZg==
X-Received: by 2002:ac8:5f96:0:b0:4dc:93cb:fdf6 with SMTP id d75a77b69052e-4e576ae681amr63138391cf.40.1759558807479;
        Fri, 03 Oct 2025 23:20:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGidBRK9vwwuPbw+sdHnG+JGdSaIpFRU9khv8BmL2+FlZ/ApkKjfg3yG1B7zJPyfdzHmKwUtQ==
X-Received: by 2002:ac8:5f96:0:b0:4dc:93cb:fdf6 with SMTP id d75a77b69052e-4e576ae681amr63138191cf.40.1759558806948;
        Fri, 03 Oct 2025 23:20:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba444480sm21486421fa.30.2025.10.03.23.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 23:20:06 -0700 (PDT)
Date: Sat, 4 Oct 2025 09:20:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] interconnect: qcom: sa8775p: enable QoS
 configuration
Message-ID: <uscvhnjlqfppfq4gh3gkja3hww5ldyxprbetqzpfmb4753v2ek@76w6rck2r6gr>
References: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
 <20251001073344.6599-3-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001073344.6599-3-odelu.kukatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e0bc98 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=sR7M8zb89NgoQLAwK4gA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 8aMSc0lntG5-8ioflHADQ4xHUVm1-l7v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfX2mPJtYsw3txk
 O2TCIFkJ1sLG8ZypDwMtAo2+uORT1BWTemgo+ug+joeCgfMjkGvovpFuvQGtY/L8gIfrEWKElhd
 jeEWTqUAnNQDNvDYuVI5Yn9cfXXp7XFu53wMEpqt7Buop9/AdGKRcu+mgObvxCgXMVVWzpcwLfa
 aewlQaSx3vK1A2GyphtspIxMHT0uAa3ldnfBFdzplcl5texfen+8bREzn92JALPXdOCLQScIe23
 iAkQNmzXK0ekhElWeoGoMzD+mWi4Pgoujzpgjs5yQeUOk4s263PL+ya5QuUDhNmq1/+xtWA8Y2D
 TdMG8Vz5qP2dN2ZezAHaIieSFMgabI5LD3/MaY8xWrmcvua0Mj5rmJe1Z/hL3Rd/nj7UN8nOHk5
 4zDYDPYEanIN7/ORA+ct2N4FHUmrow==
X-Proofpoint-GUID: 8aMSc0lntG5-8ioflHADQ4xHUVm1-l7v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On Wed, Oct 01, 2025 at 01:03:43PM +0530, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefinedi priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/sa8775p.c | 439 ++++++++++++++++++++++++++++
>  1 file changed, 439 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

