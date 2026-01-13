Return-Path: <devicetree+bounces-254228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD25D162B9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F4573011749
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B3B274B2B;
	Tue, 13 Jan 2026 01:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AK5iWFwe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WZbbI0+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEFEA945
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768267888; cv=none; b=mgluH2zAJsP3pOAV69ugY3MQBdpllry6eviO8g7O6/WUXU4D1idJ+kMpdMgDrKeWjlcvKSQAY3A1+NPExc6uk+HPP792GnjGjy826A0Rlr5vLAtuASUDUdL/TePow19rg3tb9ycKhmLd/ZbtVmsGF45t6j546S0UvFRYE11Ubms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768267888; c=relaxed/simple;
	bh=y8CPhyuFVHLiP36bSeJso3QjPejVhZSQE3nKT2VHoc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TsBHR7dyQX0zow9lmUg6E+cynJj4CBd5BrZ3HraIePl6q1ddRnzfgM/3FsNVzRrjLOt3mxNdBUmnIGcpaskwYp4GdcDQspjN6uQXEQIuqjeWxTL/+mF3tJNIniqTqWRsVTKhWt3Fdl+x0vAHAH4rWkTeoFh+eiOaY9/qN+t46AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AK5iWFwe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WZbbI0+E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN5jCt2113327
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YAml6rqVXpHe4W0+Xcni7G3s6LA9a5uHpuTNygLAJrI=; b=AK5iWFwe6gac+hh6
	cQFq2XzYm2KUUVl7mWYQeufjpcrCId3UBoXjyNdkAJCv/tW6kkJ7wFCamw0qS4fL
	hLGxJIxi0mnoruqA11FEDpvB1ovOo3KhW1iyBCsTX36Uf7KSIBLlQPmwCp3k6RgM
	GgVPQZiA0foXqsikxgb4UDzpcT/Wdh2KXPtckIMD4wb/kWlE69/GSr8/G3kHRVUM
	447blMCYRuY2IQASQ8I2OrMjlH68EI90T2jDL1JsC/fP3RrjLCywxps+RFxwWf9A
	Qtp55xNZo+Yr8CPF33Un/TxzXdiywE2Y6KjZO8DRSjCJHSa15kYkzl4Q31OLdZ88
	sC8ccA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn34g9tqg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:31:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb3388703dso2883189485a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768267885; x=1768872685; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YAml6rqVXpHe4W0+Xcni7G3s6LA9a5uHpuTNygLAJrI=;
        b=WZbbI0+EEpHFUrN5b+aIiI6DIQYJ6DU78cojk5eG70KEVdrBog+LzGdF/rM+Uz7SNE
         MZQK4DiREIEQuEFQZCLyC7qo/ylwig7PdFhDEkjGqKIVzH8Dtid7sllyVRK7h688vCoT
         ycT1M8BLSgSwaNSXJAP44yMO6JEfyrV/jyCdo4eFqTa4bJCaOBv34/Z8xaJDvV69PC1d
         cH9uQkz6nOApSYh+NSJ5kpTeoBN/O5vrGZVZn1y+q+23ihqF0uDL/OorssZEAVx05Zy7
         f2MO2PlNXUFniuMPzs9iSApiafqBhf5WZze5Ph/RBFP8MzG8D5lfJFhsvE8NbgDiUApi
         Lqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768267885; x=1768872685;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YAml6rqVXpHe4W0+Xcni7G3s6LA9a5uHpuTNygLAJrI=;
        b=UzmPAanmbR3/4LYfJEr+wC9h0SvsOX8muW1jnpidRgEJpbpY0dv71BOT/cdq2GkomU
         147f8TNpmngAoNLVYEZJd4ofjLrq3AkuEAhwdVQuGH8kIiE7MYFzMacMXeYy5gAqaPnA
         7dFn8/tovSui1QbURCiFdFI2DmVYWwLDYmNL/rRJnhOzsSEiBy/+sRGlpW8KUATV1sGR
         lIMC/wwLn3/yQykrFAxbF4c7sD/3WNIpfuJQH9NqdGnDpr0R9U6uSAK+uwSbQFnIGa72
         oxy1TSvoU/T3P4IoIWTRfUs5IOhyWT+93OcrVRisuk+UKpB+RzGz1aO+yaBcNx3MHkJS
         RKLw==
X-Forwarded-Encrypted: i=1; AJvYcCUL2ruS9a5EE6a1F3sl2SO5xZo32bbLpotzt+yljFsXQhWtm0R6rEuJJjkZWa+ANIzO7NLYnxMHQZkF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2Wxb7+gwWkzCETCjZ/pDJ2ZeRXnyjPqE8qymqTfVPVcYoyu2I
	cqxe1jESIeUxRTsKtBmvWtn5b2d9fwmjZq1NbUPBvz2n8J003Tf4uIQYPsbBx0bblDLo0kUuGBT
	fHf32m37GgSwkKG/MWOInw+S1qGuZjwou1hfvPVIpfklA+/EedykwLhplq4YPe597
X-Gm-Gg: AY/fxX4IK8gufLlDyki5jn3lWLad6a8hgj0734IwSEnHwkInMzJLROp9ouq2e2l4CLd
	07eMdObJnYcgqe/Pa6hyr8XvWzXy/VWH6pYmJ9FwsgKbm1haoT/cxtsKyfnC6clnC92En8DVc0g
	ypZVuY2PGuXFwVhlNRVVzV/gVCHz4dkQ4sKtsH+rKFjhlvkO+uqaMzxuiYzydJIX5YXoTUAD8O8
	/ahaC1KYppi5p3A9NHue+39KJgZCZxz33rSu2oS1JvK8goL/QfHAQid0ar+E4bJaN4Xo4h7b9Km
	b4aR+4iiSm9rPmZSkXksgNvI7qdgB847Z4SPRzS2+VFZyketT1kU643yCJGp6XlJScO4p3PmYtV
	/14cU/Ludn2xGqWVIol0Le/YtTsD6g3I1z+Ep771ucSG5d0efVbfAabGWu3yYY4XeZZyu0BbCs+
	o9b5NT73z1TagfaoSf321JdfI=
X-Received: by 2002:a05:620a:2915:b0:8b5:e783:933a with SMTP id af79cd13be357-8c38941e0cfmr2533353285a.77.1768267885179;
        Mon, 12 Jan 2026 17:31:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0R96lsVl9eabvijfvI7TD+QVoABtxe96JSTxPCd3UynyTt83PsZzo6lM86qgOShmt1UdqUQ==
X-Received: by 2002:a05:620a:2915:b0:8b5:e783:933a with SMTP id af79cd13be357-8c38941e0cfmr2533349785a.77.1768267884755;
        Mon, 12 Jan 2026 17:31:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6a2b8330sm4933244e87.10.2026.01.12.17.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 17:31:22 -0800 (PST)
Date: Tue, 13 Jan 2026 03:31:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Val Packett <val@packett.cool>, cros-qcom-dts-watchers@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
Message-ID: <e7j3hctjlly44pjwe3jvjtpjuj33bdvpyo6pzc6o3q5tjjlyib@7evgyweq2deg>
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
 <wyqml5ywfzwh3uulp4gzlfzx24kb2545w36pkpnz5g27xtnqoi@yywysi37tdor>
 <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
 <2f0d6bd9-0786-4445-94d2-5189f6b44d01@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2f0d6bd9-0786-4445-94d2-5189f6b44d01@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fbKgCkQF c=1 sm=1 tr=0 ts=6965a06e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=CWH8AaTQSaRSEq2PPCAA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDAxMSBTYWx0ZWRfXxfHfp94O2Tu/
 Qq5HOif7qOZwlSWcr/28c6MWgBG3KTE/7MrmKj3JHS6lTatE0GuYuXMQS2VV/memTrws/VLbLsW
 Mnb+p3nrHrXFyNDxwknJZxDtf83bXDJ6+SKyhV0q0jUalj4VyWiWi1uzTFClaBh09HMwQeytd5p
 4Fj7Rg2m1Uzm56lWgX1mxONskc1g6yaqxdPPI0Pjkotbu7m5W4BL8EoY+eZJEo2vOddF9hMfABh
 UF424C1jitxpLVbvwmyptfec+D0wlvVUBy3jgas1W0htS1V/kaKGKdnmSnQiSfTe/oYoftJVTQQ
 eieAGcjh4EtxRpkUGRs/8Sm9KFoStJDU9zZqzF42bTLGzqOUM5w9R7SOs9YwMEh6fMV0PDQEaj1
 ynE3adiOTOhRD8YYo5NmCtCra6ZzWU+SdS7SEpAs5DOUAokRrrmPyB57tj+YVbkxksJwOeink15
 anxz8X2LulwxS5Ya6Tg==
X-Proofpoint-ORIG-GUID: 0uQ8hk4-ttgHUesfz6X_eWO8b-Ab003P
X-Proofpoint-GUID: 0uQ8hk4-ttgHUesfz6X_eWO8b-Ab003P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130011

On Mon, Jan 12, 2026 at 11:50:25AM +0100, Konrad Dybcio wrote:
> On 1/12/26 1:31 AM, Val Packett wrote:
> > [resent for the lists as plaintext, oops]
> > 
> > On 1/11/26 1:50 PM, Dmitry Baryshkov wrote:
> > 
> >> On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
> >>> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
> >>> [..]
> >>> +&dpu_intf1_out {
> >>> +    /delete-property/ remote-endpoint;
> >> Why? It should not be necessary.
> > 
> > It seemed to be implicated in annoying EPROBE_DEFER issues.. But you're right, it wasn't this after all.
> > 
> >>> +
> >>> +&pm6150_pon {
> >>> +    status = "disabled";
> >> Do you know, how is Power-On routed?
> > I think it's handled by the EC. Keeping this enabled doesn't make power-off work, and doesn't make the power button deliver events either.
> >>> +};
> 
> FYI I don't think a modern QC SoC can turn on without PON
> 
> What do you mean by "doesn't make power-off work"?

It is basically a laptop SoM in the embedded case, so it has EC and PoN
generated via the EC.

-- 
With best wishes
Dmitry

