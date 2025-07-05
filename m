Return-Path: <devicetree+bounces-193240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D50AFA015
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 14:46:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17AA77A9E10
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 12:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9959D24291B;
	Sat,  5 Jul 2025 12:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VoPZOof0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F000C347D5
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 12:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751719593; cv=none; b=PbRMN3b2IeqfBgwQiSZAoaDmMUks1BWeqko9TbV4eNWStUvrqvbFXL3qrFmGP+voJgnda3XgTPdy1oDm3DipYjI6k4NEblFq2r5CSYaJk6qBVadCM/+jp95zQQ3Xn+2B/602NTLByKbOn63EtU7FubBbcTw8HBx9pMUlT4TuuVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751719593; c=relaxed/simple;
	bh=+QWiZ3k/zz6MPehIUlRJoQCAmNRvIffiV3ZDmpUjQDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AhQSSctUA/MJZyegWUbo9OsyKpjCA39pL8O/QvUhKArdjyrvDmRWmbrEHNRAjXpF2mdeKhL/C7HJ9J3ByuHK4Q0e73KcbH2alVbZ/agceY51gyr8gXX+xpF5OsX/0yc+WWIWH1gUcSnL1lGVdYdh8d8wVagBFXex4EyO1W04EEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VoPZOof0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 565CKOLI024539
	for <devicetree@vger.kernel.org>; Sat, 5 Jul 2025 12:46:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UYd/QM7kNbzE/0+JdoP0lyMt
	hOowAH6D1Fe3WmozC5E=; b=VoPZOof0xNRKqXrdnvvofYojgiI9T+HjtAWrg8aS
	B3XcsHsjyi8KzxiDTtkGkmt3rtEbf05Y8Ijqnf71yBpYwBqqP0wS5gBb/0zNSQ0L
	2Y0998l7HoU8TFVx112FhiSDWxjW6D8CN8EJguxWHrDTtbwHfDKOSIkDm75I+2Mu
	ocTxI4rrKsbmXoJnPYQsec0j8LlTyRfKejMgyoJwvmL8ic2NRvvSPRh+ypKY64FX
	+neBCxK1cN0Iju3SfLHVjKvVtHmUYG1u7dQQ7wr74ZZ5jw82OoEicGgeiKEulmfO
	+jTLS6cQGkiVv9wlkh7fA+D89ruIML6f8ODdbrQFsNlckQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pveerxc7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 12:46:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c7c30d8986so494803385a.2
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 05:46:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751719590; x=1752324390;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYd/QM7kNbzE/0+JdoP0lyMthOowAH6D1Fe3WmozC5E=;
        b=E9u5WwtR+O0EWhkskKWespxgWkhXUrpilMVeEOyiWoV2xAgSmRx173rKmy+4L2ioxN
         /hIdAVo/cHBlvlr+3H4ceI9aB7ruhYNaCMAG/UE+y3qeWyMzdkRgOxbNborhE/wvTJPW
         0gcUSeXH6GMuCWcIYlLbbLp3gZbq2v3E+3tCa9+kMwFZUL3/S9c+7P6OcczWv8pKseeM
         YVNo1AM4WuQlt4CGZuiBqWjqti3EYJcGkMcDSpZX8Zgx8LGEqcyn9BLPVN5yHrdZWlgv
         UbclXHV+PFycuIOb00nSXaKnl2b0G8j1nqiTAFJhyoIcwGk/zo6lmpad6g6AJMq4LfU+
         9nEw==
X-Forwarded-Encrypted: i=1; AJvYcCVUde+yYc/QtBorrTDi7U/OrYYSfAkbyodFHoXc5r2eDwS/2mhsml9haUSxrATErfPMCJKdSeAcbGbq@vger.kernel.org
X-Gm-Message-State: AOJu0YxGRf1MIaZt6yBYgUMUqMVYgj7C9Fs043Pg82KYhLJ0Jk44rocV
	utcrQd9+pmX9x+Pymzfv4aGDXHgO0/pyrUPqeM3St6slUXzVRm0ARv3vuxHqRe1MWtQVI8KNJQe
	A6LW5e/uhDzpBsz0tM/K62uCOMpK1XaUltbE4m4CuHsL32Xup/vQB7sXIn20BfTb2
X-Gm-Gg: ASbGncsOL6Psijf0yqjb3lRoF2RBYnfXzQiVEuPnAqbtuoqWejoVq/F1xs3fJ+9xsmh
	9vOx4r70JcAKij3INxmZD+7oC4P0x63jS9KKscDYnmxj5VxUAWOrn0H+N33ZFlxeeeO4GZHIVds
	j4iLQOSVJk2G//7Pgtb9/8IiXvXQTOhjasNuAf2/1RWRIep/H7s8iJwmR+7qEFcOuxd/zLsdFbE
	vp+1J9wCjoD3K4FF3LP8nKqw9XvjHdzJ37qkumcB0LhSKZb/OQ0CZvRT/4OsahOZ4z+BnpFOMA9
	l0WM40ioB30fMp2E8AZhqjQFWwuBFHA9j0k1ESRcfHg9PlVFiwDuNOsj+4h7tSIngV7a9xgBu+R
	kBsLKrEIAKBhrOOikxoeqD/GTip6W69ecycQ=
X-Received: by 2002:a05:620a:2947:b0:7d4:53e9:84f with SMTP id af79cd13be357-7d5ef3ea607mr271221485a.3.1751719590023;
        Sat, 05 Jul 2025 05:46:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsjh50DSBiojtn0YL0uID2TDa0qxeaMgUcWU6CWXdfPuVnZLYCtykVVhhYWDqjL3aJw+mepQ==
X-Received: by 2002:a05:620a:2947:b0:7d4:53e9:84f with SMTP id af79cd13be357-7d5ef3ea607mr271218485a.3.1751719589582;
        Sat, 05 Jul 2025 05:46:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383d2fb8sm569861e87.58.2025.07.05.05.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 05:46:28 -0700 (PDT)
Date: Sat, 5 Jul 2025 15:46:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1-crd: add USB DisplayPort audio
Message-ID: <fvyx662cayttlyrniyjifu7vi5sflmptzs323wm4a7pey7ethz@o2xq2j4ifwx4>
References: <20250624122933.54776-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250624122933.54776-2-krzysztof.kozlowski@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA1MDA4MyBTYWx0ZWRfX3whrP6bOhtz6
 4aqbtnkjyHv25tRwAfdto0omthz7RxyGGKncLD27vG+/XBf1mr1pXGq2oBsXF/X2A6r7oPvsEc2
 yqZYGPRpYwh2yrjgsGLrCeWCcjimnB5RNzmhpuza7duJrFAHy4Lw7XJrv6MTECSzyvTjnKU8Y9X
 mRvSxIPty8B1ey4hKMeZHmN3y/pcMeryJaCctGJHyCGsDJ0c9ZqEEpYkmcHlj/WHNhBb5jEqzBo
 iXT+hC7xeZvtpXz7kU/lg5QVjUvP2JBK7rg507MX77aeNh6Sfa+ZPYQ9E4U9pDs8Zp6kmGKMJoh
 zXjKznA3F2zvX8YQllFwIpP3vXPHQawUZMzKQyhct4h+aHE/jmaC+8HHvyGamaPhmCG16t66GyL
 Cc2dad33rG3jMCxIEAiKM1E2voV0CMzi1qWiW1zzBMZWVWCx5UAh62r6WlFlJiZF9BNferp8
X-Authority-Analysis: v=2.4 cv=dciA3WXe c=1 sm=1 tr=0 ts=68691ea6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=iTZVlg6EzTYP-dx1yXAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: yjoxq0Zkmd6c1lsf14Grc-BeH5CBg3J9
X-Proofpoint-ORIG-GUID: yjoxq0Zkmd6c1lsf14Grc-BeH5CBg3J9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxscore=0 mlxlogscore=704 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507050083

On Tue, Jun 24, 2025 at 02:29:34PM +0200, Krzysztof Kozlowski wrote:
> Add support for playing audio over USB DisplayPort (the two left USB-C
> ports on the CRD device).
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes since v1:
> 1. Rebase (x1-crd.dtsi appeared)
> 2. Re-order cpu/codec
> 3. Add blank line before status for mdss_dp
> 4. Tags
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 36 ++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)

Just for my understanding:
- Is the corresponding topology file updated? Will this work with the
  current topology from linux-firmware release?
- Do audio drivers handle playback if DP gets disconnected or
  reconnected?

-- 
With best wishes
Dmitry

