Return-Path: <devicetree+bounces-224515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BCEBC4A55
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 868964F11B8
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503081DE3C7;
	Wed,  8 Oct 2025 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CtLQqwSQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A713FCC
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924593; cv=none; b=SszQeWKrvuQlE4UjI0fJi9QtRH0C90NLeNwL9PAJuXukCGX5ke6jpsifntCUmc9MryIfxLkshQFXLl/v3TDGvAxeoDZnWheuWT/VkwUY91E6WCkT9WRMPqe7lodWqEy/UV38jyOsLvmRoR0bCY4dubVqD4ATRHjtCjQdaTWrKtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924593; c=relaxed/simple;
	bh=lTDgga8MBX26FDIM9uxD9CEVoactIApmKXI7vkta5zU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GEol83g/ncfsvTqIFhUBWHC06Oi/CF3AgBPMehswuVh1wqeAyz2vaIMe3DBBjaVurQk6F4gQpRAlmffddbriXdAmsZ/XfiPFtOn9tow+PRMj8Th9+TkOzDBWoMg0THS7UrE6n8Wsd5GoLod8biV3qNAnMgTviDcMfkIMA0u0u/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CtLQqwSQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890QXw001445
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f1knxwE895h//Uk+NLRtt7Bk
	s2juXaTkC3N0JijxtuU=; b=CtLQqwSQO639oW91NwkqOA2tgo457a0R3ad7To39
	dZ1GYvsm8ttIJZXIosAI+25Lzum1CCZAx+SSytWAUr0k+pm/kHz8GUs5m5lRrAIh
	W7/ZRcyU0viA9a6UIrW8qMXltd+50Kee3bx0deJ6KgU9jhUUIffLEwWz6b6aG+L2
	w3/9TyBui7yvgmrHVAF6RZHGnafTaB11G4V9qY+W1JrTtoAo2KUj7IUIbroefhPf
	6NvB6CWMMx7EhUoA7akbS+UT8MqJHjynroTOFmiNlOQGXufU1nN1KA8RTgYPVjwu
	pxtZ/7vZhdHHzIh7ew/Npi2VQsnPOODquwfkfUM0OCB71w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy729eq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:56:30 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ee62ed6beso12771119a91.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:56:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759924589; x=1760529389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1knxwE895h//Uk+NLRtt7Bks2juXaTkC3N0JijxtuU=;
        b=s3xwXxxLeNu1voD7aFyi4MdaTSsERxlGX60Q7DN9OnD9oVhgbfdAhvzzoO+gSw/n6f
         3gZ6Kj1RmpuNRcXAAjVYbBCjJnfvr7IqucVXgo/QLzzVGbnqXtolJXGFC6meV5qBD75t
         FQr9gVyZToR9SUVCdsPs7oCCCL2PbiOAUAE9DCmUH5SB7UdAnUucLLiquJBEkXI+q/xT
         iA0RUKlq/MjSd7iJHHvYJi4xuwEcjnVwYn3Hi5/x8RI0EPb2cmiWQHkziJA//mhjsse9
         IwtDUhB3je02vYonmolqfG3fY/ucl3xrTv9FqL+dJYbe8v2vInPp4zzngyGlAFxwAXnB
         jcKw==
X-Forwarded-Encrypted: i=1; AJvYcCUBst0JOlHPn9xwMZycx3vjAUvwP772rL5+roxlRaEQxxp52PP+UOQc8qVthDbDqBIrVClbQZ8H0MIb@vger.kernel.org
X-Gm-Message-State: AOJu0YwBOBNlnimAmgy0t4SdECQn+OdBdziz4AufmPybFTkcym6Sl4P0
	kxw9l7zIh4y6LRgZAinpI6tBpw6+BktoZvuLROoYO4sIZo9ceqJRtVT+JWAw+8ZoIfjhG1GCA2m
	1AJjBb234Bvu29a+u4Rl57VNIZSTjCdT+iJjV2Sfj27fkeeDNplOo+Kv52W41l+NG
X-Gm-Gg: ASbGncteRbbB7rDM+by7+KgOO5Np/aX1Iy88GHacq9xJncExuU6CMdhkf5pxcTY4qNK
	pUAmTZ5iHkHeL6bWIfn3EwYLc6rAdUKUTKZDsqZ3t3SJwJw6zRNz7CjHtY21x9yKB/+B8c1U9be
	8jvOdcfAhbXmkLh7kx6f3vKE1utRJo3QZ+V7/aSB42AAWVSfJ3E0mpiFAJbqTpO+Xw/bxPZdoZ4
	OF2ZkXEziNgkpsDWjNWckuZLGtqWT0B4uL5fVEt48PsV40ylv5IOHg7XpKWFvT0GJ/Vy0YJiPgn
	j9lpRTEjzCOwH80MdC3tw61jsTWVf7G2uFGWq/gEgC2XUQI6XuugrHkskFwrsetq0NSXscxR
X-Received: by 2002:a17:90b:33d1:b0:339:d1f0:c740 with SMTP id 98e67ed59e1d1-33b51149673mr3944051a91.1.1759924588772;
        Wed, 08 Oct 2025 04:56:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4vjV+Vlhpo1bxX4HVDR2AOqNRI4QSe2mg82Psqm/L0rIOyNsw4ssPAJ9H8Pf7ehrhuUjFjg==
X-Received: by 2002:a17:90b:33d1:b0:339:d1f0:c740 with SMTP id 98e67ed59e1d1-33b51149673mr3943999a91.1.1759924588104;
        Wed, 08 Oct 2025 04:56:28 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6311462b24sm7363069a12.37.2025.10.08.04.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 04:56:27 -0700 (PDT)
Date: Wed, 8 Oct 2025 17:26:21 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 12/12] arm64: dts: qcom: Add EL2 overlay for Lemans
Message-ID: <20251008115621.xogashum3s4auqah@hu-mojha-hyd.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-12-de841623af3c@oss.qualcomm.com>
 <yef5jtmcfuks2w2sngxr4a4htihxx4xidsgwpro6wckbfvmvvn@jfr3dlsdf5vm>
 <20251008073214.kcanrljguox2vtzq@hu-mojha-hyd.qualcomm.com>
 <5408daec-127a-4fdd-88f1-855c90694f6a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5408daec-127a-4fdd-88f1-855c90694f6a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e6516e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=mJOJxhs_1O9UuuOt1LYA:9 a=CjuIK1q_8ugA:10
 a=eSe6kog-UzkA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: pS_mI7k-OuHa4crSMQCk78b6ux-kHllj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfXz2fZMLLdWf/A
 19tRbR0jeglid/hQV1US99Q2Cz7Ieu3vYLE9hW2hrNKQdLOhdYajsEoqM8P/xvKkQFiZTolB5ix
 S0LnJeaAml+JB6sXAC5huA/KfEEotifQz7LJJHoUie3D9JdpgZvSG7saKtbYOOuYX8T1tf+DnJG
 Gaug6tH97G62HpoZIhfUGKY+SmdXk3eCxUf6SbL7jygyBv97U2rB1NfmxBPhDsDWE+2idUkVdT7
 ZqIgxplF7X1fwCwpcQdIkfzJYOLghS556CYEO1Sqwd64d1VKXApV/qco/jMRIuX0LK1Ujj/r6bz
 ifHq1arbYE/LIQB/tbSLck33CfBHkcSmEYVN6P3lmrbvBAKAO5eYxx5tLRcsn7WprsIANrjFEpg
 J+G1JKwtuODVqcf6gC73XQjbxgpJEQ==
X-Proofpoint-ORIG-GUID: pS_mI7k-OuHa4crSMQCk78b6ux-kHllj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

On Wed, Oct 08, 2025 at 12:13:03PM +0200, Konrad Dybcio wrote:
> On 10/8/25 9:32 AM, Mukesh Ojha wrote:
> > On Tue, Oct 07, 2025 at 02:55:04PM -0700, Manivannan Sadhasivam wrote:
> >> On Tue, Oct 07, 2025 at 10:18:57PM +0530, Mukesh Ojha wrote:
> >>> All the Lemans IOT variants boards are using Gunyah hypervisor which
> >>> means that, so far, Linux-based OS could only boot in EL1 on those
> >>> devices.  However, it is possible for us to boot Linux at EL2 on these
> >>> devices [1].
> >>>
> >>> When running under Gunyah, remote processor firmware IOMMU streams is
> >>> controlled by the Gunyah however when Linux take ownership of it in EL2,
> >>> It need to configure it properly to use remote processor.
> >>>
> >>> Add a EL2-specific DT overlay and apply it to Lemans IOT variant
> >>> devices to create -el2.dtb for each of them alongside "normal" dtb.
> >>>
> >>> [1]
> >>> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> >>>
> >>> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> >>> ---
> 
> [...]
> 
> >>> +&iris {
> >>> +	/* TODO: Add video-firmware iommus to start IRIS from EL2 */
> >>
> >> So the missing 'iommus' property is the only blocker to enable IRIS?
> > 
> > Yes, but this would require some changes in the driver as well to create
> > a platform device for the firmware and IOMMU domain, and to attach the
> > firmware device to the domain.
> 
> "yes, but actually no"
> 
> > 
> > There was some discussion around this in v2[1], where I added support
> > for video. However, the change involved hooking into the video-firmware
> > property, which was used for Venus.  There were concerns[2] about following
> > the same approach for Iris, and due to that, we have dropped video
> > support for now.  However, an RFC has been posted from our side to
> > handle such scenarios[3], as of now unclear about the direction for
> > Iris.
> > 
> > 
> > [1] https://lore.kernel.org/lkml/aKooCFoV3ZYwOMRx@linaro.org/
> > 
> > [2] https://lore.kernel.org/lkml/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/
> > 
> > [3] https://lore.kernel.org/all/20250928171718.436440-1-charan.kalla@oss.qualcomm.com/
> > 
> > [4] https://lore.kernel.org/lkml/4a32bbec-2baf-4210-a7c1-1ddcd45d30c8@oss.qualcomm.com/
> 
> Reword the comment to "/* More driver work is needed */" since there
> is nothing more you can do at the moment and you most likely don't
> want to block your series on resolving the above entanglement

Sure.

> 
> Konrad

-- 
-Mukesh Ojha

