Return-Path: <devicetree+bounces-248507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD4CD345F
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9EBA3013EEA
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 17:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5786B30F535;
	Sat, 20 Dec 2025 17:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lX4wq6yF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iOukJP2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709C62D8383
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 17:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766251034; cv=none; b=fHzfirQC2fvAmCilmjWKcEuSm1I6jBSR3MbsxvNfRU+V/FQUiEXGbKCBJqG2PgT5Ejso8aM+n01uTL4pyM4vy0lkhhwDJ2f2hGbyysTNr2cE+N1SAvoSPkpf7jtucwgTFAKnz8aLDwoTYIOlyJZ76B5v2q0EyGmSZvl2W+0eM3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766251034; c=relaxed/simple;
	bh=5tdI0L0c65S6XUPwkOxJysDmVKbdHm6RIEqdnFqYviY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eA6wRac9OJg/4xa9ii7IyhZrawyS6QRozr8A/C1QB1IfgMrb9AbIN1pWM4zKFCuIcKRUFMunw2n7l3Ug26tIrmOQkIpJhCSM69wb1n01xCz49Fsyt/Y3wCKkK1m2fezWe/45GgaAS4RR9q8ZYJofHPBOChjzyJoN8KZVjhIxYZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lX4wq6yF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iOukJP2j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBPck43590809
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 17:17:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=geJ5c5YXn+3HZREgB/Kj9BK3
	p9KA/0JxWVBfl8NvKhw=; b=lX4wq6yFh/ho+wKEbd/4VN07d132UNO7CEctKzBr
	VPg9j8dF/TqwdGX3ERgy4ly4NcUC2zhVa6ZrkQ8U83ld1tKlXAl/Dt/hjfxG4yJM
	gw1oSipvdAML2eXm0JfQ6UBVYaDvcR+ehRXps9Tm7CYgkikko7N8NEBoFF5zQWWY
	Sl2Ccgo6N7dJFzj4KOuP0d+U909DsGVO9kf8FJq06cKJFSStXTC5kpzH5jOcV7ys
	6DnYM8kUpACNPfVCmj0kHnnxkksqanHG96Jf8/noKqCe338ZN63RR5aN44EWazMm
	kwJ4PrunCcrWxGmMJGm6imsqKPezVHab3acv2Jllw7XSeg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mtb116p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 17:17:10 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a366fa140so124690846d6.1
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 09:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766251030; x=1766855830; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=geJ5c5YXn+3HZREgB/Kj9BK3p9KA/0JxWVBfl8NvKhw=;
        b=iOukJP2jkVrx91q9AE3grdoAF1EQlGTXPzg6VTUYIkw1CGnTr3VABSy08e3j2fGeyR
         LPAlRNhaDlJomymsSRDZzjJTOJ+7oGJ1+VEfq5uozLAWuZTutP3Z2xKN2OzQ+BSvmNAk
         z55EOYaKrUIbLYZh6IOR/VORmEwzvbit0139pH7t8SJzFBnkT8no9pIVI5lv3xcYpD5u
         3wgwd5dr3edJfEEo3SemYQ9Hn9zY35fDGFUTNOEzw7/Ff7B+voTBeUL351iFMeoqrjkS
         ZXUZ9WMwx+CWCctdIAOmsvNWjVN45iH1Xe2T2f4ChE3zOw8nD0loMN7PFMtOYPVzq2Q/
         g78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766251030; x=1766855830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=geJ5c5YXn+3HZREgB/Kj9BK3p9KA/0JxWVBfl8NvKhw=;
        b=qd1bHWbvuRMAbQCnsp9fw5v3MtMhkl/zncxePFdpfOxB8CICu8/j/GbzLujYJh0RYZ
         6ACUr9VEtmftk8FYzAvrqJCKrfcGu7ugTYtw3zvpXHL3GCxKJ998RbEIi0K70d4et/PM
         dsb83zhBQqAj/fOS95C14DI+CzcIkYdRE1lyE2jAaV7FH6lsQoON8w5CQOw7LNRNqRMT
         rxfJKVsYw9sUjBqrnVLP+6nUBm8n/njL2+J1kAkFST57XLwXdvbmDUDj/JHgVPD24lbm
         XguAlrUdOfsSUoKhlxi2y9RCqFLPjKh9cyaFnhrJQAJV9zyr1Iid0UdNaDnSgyanV3ob
         xfpA==
X-Forwarded-Encrypted: i=1; AJvYcCWOIh9C1K+2ohJ7jvXZw7+SAjharXmslYbvEw8O4ABmyJMgyUhKyyfLb5ap2l64kLSCIECYmHMMjiTh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2PVoBbUd1NvuIFdjVuk6DXu4faVqdWqpyAoahMVFymEuYH67T
	GnDX1/Xaaqaj0wOhxVj8NHwWNeN1FJGK/ndQUlntLI+Q97GtTGA6R5rruBpYbsOyKNe75FaMxP3
	5mxdtlJu1RaiPEeQB7hyXKSRWvDQTlfSdgC/rkjBsHe+rHRdPz56E/iG6a2FSQRAI
X-Gm-Gg: AY/fxX7ZdV7/7E4XThxoFOVy+546OnQL0U9jF3kSZHCk9NLKqQcHXNdUPiRJ2glL1Bz
	6+vaDi6bIX6gkyZlTC/O5BflwS0jMNo64+RdNLHLAZchhi5M79XoG69yb+oTBS8RHDDlRnUdubu
	2qtOGDcf4Ar46mL83yL4duD4DGVjWBVeyiwhXYKidFNMfAyK/BkT02yLxbD1WJ0qWDQiNvb/okh
	wLRGqO/OkBXIfCw/+NwuA1iis3B09e4uqJbnhZEZPV8gX8vphj0k29p21ArtOu+cpUqAB/ZYYmH
	LQPDOauB3uKX9ql1+NxnmvgsEY4yufAGCieKhBssivroMJk9R0fIM87rJG8TxHhG4XDJR+izQMM
	VhS6b9lJSp7oPhaAyNEovUoR7N1c6sRpUsWNpe36KboBVpBNlcSnXVBiCzGQe74Cjxa6RMylZFl
	MqvJYpS3/07XHS/xT3k9U36J0=
X-Received: by 2002:a05:6214:130d:b0:882:4632:cf7e with SMTP id 6a1803df08f44-88d81663907mr102671636d6.12.1766251029735;
        Sat, 20 Dec 2025 09:17:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdaTJQ/g2tFCyPrDnyETWdxiFt6DJBxQzQPzvm+bEwNppPpjgCw/1E6J6B+JSNV7tFdEegmQ==
X-Received: by 2002:a05:6214:130d:b0:882:4632:cf7e with SMTP id 6a1803df08f44-88d81663907mr102671206d6.12.1766251029242;
        Sat, 20 Dec 2025 09:17:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812262b307sm12467531fa.31.2025.12.20.09.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 09:17:07 -0800 (PST)
Date: Sat, 20 Dec 2025 19:17:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com
Subject: Re: [PATCH v3 2/4] arm64: defconfig: Enable Glymur configs for boot
 to shell
Message-ID: <2iu6xuoeubohzsjfo46lxnxnzi7jdcqh6joxms6e5kcln52pr7@ewte5v4m2dmr>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-2-32271f1f685d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-2-32271f1f685d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=E/HAZKdl c=1 sm=1 tr=0 ts=6946da16 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=X6lb09SM9k0nLHDX1QgA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE0OSBTYWx0ZWRfX32VRp42HRgXO
 tPjmno7r+onySYJNDcD+glimA09UasUfXg6lwxSVyHQWLDHAWzErB2glr/bee/Y/IY0yfwtrp47
 csJH7Azo7Fv5hffx02dgCoRYrLQQDFxk1OWw5XyZf1csE5N381JpbpjUj9g56qMvpE+N5EcH/op
 +L+QKOMaiEnK+VHCYW9vD/wGuPKW5bZsnmftCRaTCUFM05cfcU4FLzKkJ0eWF/VhryXxKJk+gux
 jkwQcjz1UclzFqR6ZTviyTM1qGb0RKr/0va8hTFpFP181Po6xRWhyiw7z5BN+w8y3n1FG8UwvKP
 1opYrwXp2DYzvj6xXA9a4vDXwgRTb5J7Mpq1KxUP0g+qQTr1470LkpIcUZDcM7EP8KKaYSeLx+R
 6vWSvPGpBInMSqD7fNGiaPpNxqUOn90P/FXZWiMNyTjy/ycWXE9DHQHcnHbvUyY5tSJmAAO24aB
 rwLNzv4128osRaDOEbA==
X-Proofpoint-GUID: tqVGCS63OW2D1Sj2LiQRQcorhnOU-0ko
X-Proofpoint-ORIG-GUID: tqVGCS63OW2D1Sj2LiQRQcorhnOU-0ko
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512200149

On Fri, Dec 19, 2025 at 08:16:55PM +0530, Pankaj Patil wrote:
> The serial engine must be properly setup before kernel reaches
> "init",so UART driver and its dependencies needs to be built in.
> Enable its dependency clocks,interconnect and pinctrl as built-in
> to boot Glymur CRD board to UART console with rootfs on nvme storage.
> DISPCC enabled as module, used for display.
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> @@ -1425,6 +1426,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
>  CONFIG_COMMON_CLK_MT8192_VDECSYS=y
>  CONFIG_COMMON_CLK_MT8192_VENCSYS=y
>  CONFIG_COMMON_CLK_QCOM=y
> +CONFIG_CLK_GLYMUR_DISPCC=m
> +CONFIG_CLK_GLYMUR_GCC=y
> +CONFIG_CLK_GLYMUR_TCSRCC=y

Is TCSRCC also required for serial?

>  CONFIG_CLK_X1E80100_CAMCC=m
>  CONFIG_CLK_X1E80100_DISPCC=m
>  CONFIG_CLK_X1E80100_GCC=y

-- 
With best wishes
Dmitry

