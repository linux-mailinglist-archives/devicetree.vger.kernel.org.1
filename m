Return-Path: <devicetree+bounces-178416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFEBABBBE0
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:03:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E848A17D987
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5125A275115;
	Mon, 19 May 2025 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jVgQlqwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96962459C7
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652501; cv=none; b=TX61c3UJN7LqmYgGef4gWUbRvKQGHG5IJfVoN/KzDWm+U/GljCGKpKUU6vpGLAOiiGt6aPZG66w+z0sHjrlqJx4biQGX7gt2WiN8AKh3bLjC/SQNRrnktw3ojf3mC61IrE0ydsuMC5opWzLeCHLyljvlg/KHOo02bge5gHYypvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652501; c=relaxed/simple;
	bh=ZUsw6HDpkokcwzIquJ5+cZ4i6BF4ATZ7/SQJ1RjXOnk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kFy4oHGABy2+CSXYR0hswc8xRQjQn+jKNEWoQBha+VNRqDtYpRxCsFWgjadpbL3QSm3CsDy78v14aF71O5c2qwYe6TemvVc3A6awRyXjASboZKghQDFga3LSoacFzxi2ukg9EJ3ED0ztqI3lWQsU6GZYsCUXM9AnnnyCWpDkopg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jVgQlqwo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J98DMB029025
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:01:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UeyIDj9ITmlg4UbTsleNvBIjtMOcAznKnaaucglFJbg=; b=jVgQlqwo98uDWery
	807Wwz4XzJ56eiN5p0+kE761PJx6+8earbKQt5zkbCNutxgPvS5CrkSNao61fZQM
	0KKw7s+M87jucNoQEdLiHSv2C2J62nur6sqCr9euy2Q21rQUMEJ6TfzOwz6bYbGl
	QhYwuNBRxdCVSGwSamMKHNXOmqaEUeGEhpAx8iWu5QKDjCg7tHJbbharEyyAqIZc
	WwQrMA2ZrcTfNpWrvrFovjPuX3gGBp8tQQLRNZSQ5HD4Y6Zg1BAapiV8+F0PP3cT
	QUQ2B5cm6MGkwPFtyLCd3/cgLMqslo4oeG+D8dWhtZ5wehJBh69iv6Nk8QYagzL7
	T3tpoQ==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4v4j9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:01:38 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3dc708366bdso5507615ab.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 04:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747652498; x=1748257298;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UeyIDj9ITmlg4UbTsleNvBIjtMOcAznKnaaucglFJbg=;
        b=olzhGIGBJ4I5QNPkmfwwVbE8URXgJmi3VncTSA6wCRNitBKp4x1hAmsFtm5ImIcfz0
         yE+Yq48BAHvK91ddyfBGYCAhwNelwl+6CVDhJLleG2B0Rz1z47fn7VMafN0KB9A0KrEI
         PBi2mgZ+6TpR/iF7E6MZTdIN/T96ysOVdY9oCBrFSf13Kzydxz8iQCnDmgfiJcv7HxYV
         hUfxCfyRBpLcEy1Sx+Zj3CG0wUTA0J2CyWPI6ai6hPUPXIBcozzI2LNRY89xaITWCokm
         wGLR6bS33Jg2jfkExXp9T6AXLHkNlgQ71iIRf9UXPv3J0U9sfmhLKGiAawASfULs48hJ
         9RKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqzGzziIoicdiwEPNKVQCO0KGUl4LiKfscL3UgdpTAa0qZMEC2/SFyJwjvj5XDQoNiJ0yJJQMdAJlk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4W6rsw8GpsLSSxuLz5LpbxoJagsMf1UViWgvgJAMJOku9wsnB
	6afaKshod8reVtQlRdyIBhkSnhRh/aVeSMbua6iy6i/dPx93JY6nq+rkrvW3392eeVtCr0i2kNV
	QNN0SxKc8SeehllbEkSANcU02J7jjO/zhdF/Ww6CjNXDavOAhcEOnOBkvJPjzECmK
X-Gm-Gg: ASbGncujoEOrX0mCWA8yMRb3akTAJlCLvFNMKzsmub38jVK179Zj0scY17sY0Lys5EZ
	DFspBuw/Cx9gAj0J5+AAPYbEnJNmNXHdEKwNcO7ZF9GhpEXT257W4WB7Tpgv553oQDwk7arWNHQ
	kJB7ZLe+pCvTl9HJnuVRlRPBhVF0lN8fa85tD4Vftey0sdCj7RgQb439GxfOgT3S2uBk+By7uRt
	JIf9ZeLuk3XjUsgoaDp0cd4efBOZ7WUNkv3/6S9eKfN8W3mGMH7XcOuSTNMXD62hoPtwXY7k3on
	pREDl1IWhnsZ/tuika/58b6KhfeafNy1I91ka5wfoOkC9Iin02Etv82pgBTOeaGukY4k74d0gzg
	=
X-Received: by 2002:a05:6e02:4503:b0:3dc:635b:6724 with SMTP id e9e14a558f8ab-3dc635b68aamr48847205ab.10.1747652497925;
        Mon, 19 May 2025 04:01:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIo93Ctw8RMLn2/Q9we0cDjAuETBrcair7HSgGdmyDSyuXUvh0S6+dTmbsrmUeaGWzk1JYWA==
X-Received: by 2002:a05:6e02:4503:b0:3dc:635b:6724 with SMTP id e9e14a558f8ab-3dc635b68aamr48846915ab.10.1747652497479;
        Mon, 19 May 2025 04:01:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085b908dsm18641871fa.72.2025.05.19.04.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 04:01:36 -0700 (PDT)
Date: Mon, 19 May 2025 14:01:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: qcs615: add ADSP and CDSP nodes
Message-ID: <6ysyyj7sn2isoddooj5y5evuayplwd7pzayepnij4ioi7hx2o3@43wd4fd4uaha>
References: <20250516-add_qcs615_remoteproc_support-v3-0-ad12ceeafdd0@quicinc.com>
 <20250516-add_qcs615_remoteproc_support-v3-5-ad12ceeafdd0@quicinc.com>
 <thtk5vv2hpbnoapmt6j7nlgrcyedjzjbi3ntlyb3ll7atks46n@bp4isaoert67>
 <73a689a1-e8a3-4417-b0e6-374ec9b091d5@oss.qualcomm.com>
 <14091125-20f4-405d-8022-f02ac3c311b9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <14091125-20f4-405d-8022-f02ac3c311b9@quicinc.com>
X-Authority-Analysis: v=2.4 cv=dIimmPZb c=1 sm=1 tr=0 ts=682b0f92 cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=UVS_QiJXTVoWLX6X8-wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Ti5FldxQo0BAkOmdeC3H:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: QW4IhWg4xyIeSN9FsLtoQiDFLT77LP53
X-Proofpoint-GUID: QW4IhWg4xyIeSN9FsLtoQiDFLT77LP53
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEwNCBTYWx0ZWRfX0RsiiJGbxd9j
 1fMKC86/RuNanbW6zpMrG+EL5zwiu+c2xeeY1YEFeIm2PNeLi18gKKkpJkO1fsFbCVmCenCarl9
 7ubddrPBymSAlr64Uam/MKQKZDKo85uvQhqLtT+vKbDKDVdgPmLR6YvZD5VAsX4h7knw0W5esFn
 HnYQGRakNBibj+C9lJTH8YRba8RATY2CUoKqFWCFXPgBES+tl9nRlL136cMVzViJuMMpe4HYW4k
 z7oFWbFLU5sZEWNHl2tjSLKp8wNjKyWNuu0PKapkooj6KJs/xJEg30Q73yewig2swnvacAie2QH
 msDfmhK1ixExHsQvpnUKuAiRmiKtDZtjH4/VIWmqnM4gqw3/eZhzt4pqMJI0h0YRN2HPpru1zW9
 mjhg2vnQcM1RPq2VkXDW1UOQhfvSzw+ltB9dHFY8sKbAgNcSen8Q4n3w0Wf3lFysG8TB1IF0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=920 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190104

On Mon, May 19, 2025 at 03:12:39PM +0800, Lijuan Gao wrote:
> 
> 
> 在 5/18/2025 12:59 AM, Konrad Dybcio 写道:
> > On 5/17/25 12:11 AM, Dmitry Baryshkov wrote:
> > > On Fri, May 16, 2025 at 11:27:06AM +0800, Lijuan Gao wrote:
> > > > Add nodes for remoteprocs: ADSP and CDSP for QCS615 SoC to enable proper
> > > > remoteproc functionality.
> > > > 
> > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/qcs615.dtsi | 86 ++++++++++++++++++++++++++++++++++++
> > > >   1 file changed, 86 insertions(+)
> > > 
> > > Is the MPSS not present on the QCS615? It was a part of the SM6150
> > > design.
> > 
> > Hmm.. good point..
> > 
> > It's surely not there on QC*S*
> > 
> > it is there on SM6150 though, quite obviously
> > 
> > downstream ref:
> > 
> > https://github.com/ianmacd/gts6lwifi/blob/master/arch/arm64/boot/dts/qcom/sm6150.dtsi
> > 
> > Konrad
> 
> Hi Konrad and Dmitry,
> 
> I have confirmed with the relavant folks, and this variant of the QCS615
> does not support modem.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

