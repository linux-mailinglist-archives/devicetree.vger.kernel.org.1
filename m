Return-Path: <devicetree+bounces-240092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6152EC6D3EE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 0ACB92C971
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC0E32B9A5;
	Wed, 19 Nov 2025 07:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jIKywK3r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QAwSTPQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D072E30C601
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763538690; cv=none; b=Y+rYs/1mZBkVLOu2FVjuf6E/tnpYhJlhrP889AzNd07QWviNE8Gksmlx+ZX9qd3+1VaWHyJE8T3OZomIHwux1wGv9pg0IxnFA7p9Fw/xb3YOtyoj+OcybOWHYpkSjH15LDIUDinqocT7MKiJUeDfvNxY4/XzQSiiKdKzGeHTi7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763538690; c=relaxed/simple;
	bh=wWKQDuouWIsDixjwE0XyK+8nltKyTBInoJL1AP4cxoc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qiFzzOUdsmpfyXcnJwnL4uYJaFYLWg7vB8n5uI+EGBEzq7/ssFNBj5m4cJbTlffipNPSHbfww6a9SdV0KC27qMzqfobpI5S1ywjAfytQcPOvNxthpnEnorZDlK7pk8YQrTTTtT97N5XDwVwJIGV0+jkPObXWV/SoORoXGzxGHys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jIKywK3r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QAwSTPQT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ3cIi4536909
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:51:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2XjfQmr7tdw+9KHryrOocOif
	T9IiBmdnXI4W6fT2KkY=; b=jIKywK3rD63Z/R3mA0eipkDq8Y4uKlglc3lPht1H
	2BpD3eU8ynw5031nkH/rv89XLuOZv0/x3WRJtXCQucc0ktQxt4IFTKlVuAf89XRy
	6Q4mbi5Y3m9n9uE23GhvXZoayxGHixUegHcTApXsLUw7XzODOAvi4oS7WREowacp
	GavbJ0fYnzcxaeEtX6Gmben0aLAbVrJBFtmCfKUD2w3hwf2W/UkWvVLbnZE1Wykq
	WBQrhmlzmWEHaiNOHeQfRwvnHf13UdY2a07V8d3BdRhPS0fK4vvS5+v5vEpoBdtt
	rcw+8DzMvk+A0s3BLVjWLqYLMIS/Z/9qHgX//nwelDZsfQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah65t0mxs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:51:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e4b78e35so930751985a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763538687; x=1764143487; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2XjfQmr7tdw+9KHryrOocOifT9IiBmdnXI4W6fT2KkY=;
        b=QAwSTPQTLjaD7lQIO2DokUZe3BSuykMoakkIr13y8IqwElqFf0Bo8eCcVQZtypchmU
         8WUKWbN6MUM5wcScCBUr0ts8gsAtjqrlBGWcRiyNfR5dyooGIEG6I2ZjISdGQsDHP7X+
         HFDeqocdSVZ6X8E2EbGNz7FbiyjaAdHWUrIpVcMkY+0MJ9DOgM4SH7OlC+oqbEdYDyBc
         BmvuCQmMWM6uFJXwovlkx9ssdjLgt4ipAgYgleLivEtShY8Aet9Yeba+Mi890u2mqIzj
         3c9QLk5roUSw1IVuSMgcQctWH2gPj603wyR6D6Dl9ndQ4H084hIKU/Do96CY+gB7XRAM
         in7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763538687; x=1764143487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2XjfQmr7tdw+9KHryrOocOifT9IiBmdnXI4W6fT2KkY=;
        b=J+HSzDPoLQ5d/Jx6pXE/fSXoU7//9tcMvLNiIBr2qDJ7NbKY3Ms3R7Ua6yzr4oVF73
         u7UJwezcWVkWjTXZUlbx+YqnSyJMvZ00OADSPyshr6bPM29wRfkEmWmgTY5BFD1RAykb
         l9g3W1z4zIg6UlMT4RXHXk10TVZ4RSBlumrkvLVCMNH929i1ebS0OJ2JuxmIBz4P44HV
         xYqwzAa38teN1QdLqd21gKxKpzCSLQc4KfaVCW2rBUR67/NkHrkz1W3aylm7hhWsXUA8
         1c/8ixPT0SVKUnwvsFtSLvNqmWdsEuH7eDGIG88UgIyO+y15lasHTak9hm6uYg9gNsE6
         EHtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFdJEY6vquBJETl5xCptMwzIaFx1hjfmt+q2Ttwf17QhUUep6r+7UKG/2p7qcRMhBIUBs3vAdllLyL@vger.kernel.org
X-Gm-Message-State: AOJu0YyYRGd97AD8VnDghywWZ1cnpn9+nAXlb2AA5YPkcuzCRpM9fn3E
	bzofCIUvhXSvtQPPHUF/ITEKgZzZRnSDVnB7T9GxW3M8FYGC52aRuTo8CUP10XdhQUz/QCtw0qi
	aNOLorNGpkgT09d1poX3+3JxuY0y0VOmFPNNpfVvcs/0sj2lpoZ+Mq+zErhUwXMpR
X-Gm-Gg: ASbGncvrebla57EhWMbqqt/VVvwwLfUoBOC1fpaJijBwhkvMhzKHGROFf53xqfbY0WH
	tKSyIHpVxeyy40ZP7IZhTX005VkcHuTrQqwuG0qYAijErx+1e+cJfJo5V7NCvcMQ4611mUfWVP+
	IdjIglfiCs4/JfKMz3749vyxun/BhSRr1v5xSBVdW9XQiz67/fZUq9XVQNs1BdQJWWG/+nuJdZ2
	l3KFDlnyJNcTqYfJQPSfeZtV1j6wxcGHW5T1aJ5csSu9RNvOu1uiefomCq0jDmIa7jLAFR5650N
	Ndp3uwJ7kRwFslZgOONWnm5+feal2S2/GaN3uu02tpkKyzTzJJpKzH8VbOpJLxFFBJ6IK13T9nV
	TkZcNz79a4o57S9qcMnmdOc4v3eRmyoHEWT8xnnowa9z/+UXA1LJKmlzDXaZkM00TKWU+JtQvWY
	h7LVkR9zL46PwILu3CQP9hYpI=
X-Received: by 2002:a05:620a:2908:b0:8a2:a5b2:e3bc with SMTP id af79cd13be357-8b2c31e904emr2349528485a.89.1763538686832;
        Tue, 18 Nov 2025 23:51:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmwiwC6dVFx6NmfG+wYr7pqxNybyE3jGE4HgxI2bEAvpklfPkCwwaYej8biFwFpQXl2WHGsA==
X-Received: by 2002:a05:620a:2908:b0:8a2:a5b2:e3bc with SMTP id af79cd13be357-8b2c31e904emr2349526885a.89.1763538686425;
        Tue, 18 Nov 2025 23:51:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b8427sm4454564e87.45.2025.11.18.23.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 23:51:25 -0800 (PST)
Date: Wed, 19 Nov 2025 09:51:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Deng <wei.deng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        quic_jiaymao@quicinc.com, quic_chezhou@quicinc.com,
        quic_shuaz@quicinc.com
Subject: Re: [PATCH V2 1/1] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth
 support
Message-ID: <j4ji3vemr4q4t7lrnkphi3thd2lk5ngfm5gscuabiuuadc6b56@byxfajvl2r4p>
References: <20251118140406.1551669-1-wei.deng@oss.qualcomm.com>
 <20251118140406.1551669-2-wei.deng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118140406.1551669-2-wei.deng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=avK/yCZV c=1 sm=1 tr=0 ts=691d76ff cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dDEM-9S5bOE7Kyg1U10A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA2MCBTYWx0ZWRfXxta7Qr0LpCVL
 3kzzR0NNe0t9U7DBZAeQU6LSD3pYeQJnqy/Uac8LvmhSgWjOZBt8FvYkj4pf53JLGr4F8JCvR9P
 g3UY/2z+g+MNtXqQMq2qzyk1KupYes40l/GThHSRXUqUhJyGLZaR5P7a7sP5idCM1em9Rd0jNkl
 7ntAH0JYZcKwfNxMm6vivsjdDsszoVvg3LsWnO4dqvjs/jXgF/LeyJGMvLFptrMiHkEU6Ngma7U
 QCPuhjGPpNH3aCYGLEk732TWeEFRG+1H1A2m0Sq2qv9sdYJCLP1mXEq8RJwOPCBMcvRQP4HjO8r
 jkdVJaXRSv7/aJwLIO7vSu6XkpzSaOVwLJR3UzWEeEANIb+QqdBEs5PUr9DGYz+sC/rFeduN/qm
 oiTm8GSBj8TY9kAej0Z+nliTTbfnQg==
X-Proofpoint-GUID: lf15E1tZgKJgqNcj069I8NHpg-3kd_vq
X-Proofpoint-ORIG-GUID: lf15E1tZgKJgqNcj069I8NHpg-3kd_vq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190060

On Tue, Nov 18, 2025 at 07:34:06PM +0530, Wei Deng wrote:
> Enable BT on qcs8300-ride by adding a BT device tree node.
> 
> Since the platform uses the QCA6698 Bluetooth chip. While
> the QCA6698 shares the same IP core as the WCN6855, it has
> different RF components and RAM sizes, requiring new firmware
> files. Use the firmware-name property to specify the NVM and
> rampatch firmware to load.
> 
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 28 +++++++++++++++++++++++
>  1 file changed, 28 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

