Return-Path: <devicetree+bounces-245404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A78CACB0793
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 16:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14AD730194D6
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 15:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEF22DF3EA;
	Tue,  9 Dec 2025 15:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QsAv61li";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T0IFj+ys"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E866D2C0263
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 15:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765295670; cv=none; b=CCm0DnhdZSTg9oXGQQTFGT1br6ZMmwr3q8ZzYeEPZ9NIlgqbfG8bbm3XIejVdU9VBBwMn5qYf3yn3kN9mNmRh3Icqb3cvlknsBM+K4Yo00CNVU/F6gXMXokIAjF3A+g2c6U97kRZf4kcdI/iIpjFleupW6/Ftd3gbbapfmuDJuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765295670; c=relaxed/simple;
	bh=vP6JEBay4wym4wpbjZKMRlt5tzVrDAcBrcdvoML2i4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VBxJqMR62U/F6ex+0e6fzoasUFIpqXeczL7ig6FTv8BUUYKqZP0T16aafQK/4kL+8ZNHCKeC00hDYh1qrIbhVNpz7BhsNUWRbT7zwSeIiXFZ4oE3XYyFX2a2iY4Clac9tDMCmOQ/qejuDcaSIyjnK23HESu3XWm4uzJWZg5+N8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QsAv61li; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T0IFj+ys; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9FhYba278117
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 15:54:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=prTfbXeI5lnS1lD7R/u1zDqW
	GM0l6zrAZx0r7ruHc+c=; b=QsAv61liJtCdjLHCHAAyrLFLbrJno+JQeSe44RAK
	8sGpgAu6y08bDfxt/84oYL21lxAqGB+UhTcrdiJSHlUgJw9Dj/8wsQGWKnD7/Ao5
	7+XGy+QkIBhluFQridOXDSFvTAAjS5T45zMQQWv5gfOn09/M/xw+yixLT+vnTaRE
	hq3jO9zsgZYrOvfDJeoDFQ8LCq/t1Uk53tq7/I5n0DzkVyYzj7r4FMtbVXa/YkRP
	2TwSGGI7S/pURlJvENl5VUK/9uxUFGN/EFi3UPQS24MvXtUF1A7ityc/yzjeq6lk
	AJmurII2T1GtLpJSVhFVvRpE6d94x+y3yyAfeUo4ud20Lw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axnpp88ys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:54:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee3296e984so106772101cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765295667; x=1765900467; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=prTfbXeI5lnS1lD7R/u1zDqWGM0l6zrAZx0r7ruHc+c=;
        b=T0IFj+ysxdoSfo9Ztn3L3UmxUFYsVz98aCceCx0mO6k4wePQIHPB8/8agtzPpT4vF1
         tj420P9dgCe4n2/fH7aItb/yck3pvbDnwgE7zebCdq7fmhBof8P3xb+8rMkwLj6d3Ugs
         7AXuWZ4ARdsk4lXV7v/C6OOET5Qx4ssTcZWoZuMpZrNw0VyCJO6qoEpTihnbxJdWhsiv
         4wjubJWkWokfgRg8LlPaQJLkP1IFb1LUlunFRIH231+utyCr0zNpFG7a31ZCft5qwFNe
         HPZqf0ZrJUhsaM++IQOY5xmezdUrWQkP2deHPny8LoYKQtkqj6iuSV/dpxG5S37PJr6r
         g4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765295667; x=1765900467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prTfbXeI5lnS1lD7R/u1zDqWGM0l6zrAZx0r7ruHc+c=;
        b=hsz/xCCYJbwcdt2TvZ5OkkQxb3kGpdsQpPA6vimaloc2KNS3buqj3X/T/dGi88WOwj
         JCU+i9PJ45l/n0ytscyz7rVOUdwELnm1RzzAJ7BbtuTD/PmEEPgNvDuzLLUhjIzul7q9
         nA5Q5+REENUtWNIjOqMoHb9XE0d4PyuPuyAH321RC3LRs8tff/+aTCJYQkOWEEu6xlEP
         LeyG61H8hzu6XxCs5OJEpN+ozv2S5O647coCO4DSsdZGHldgiIPE0NlyEJ+NCmlCIYaR
         mjTcTPgggUxU8QUPHbTu3Nt0XNkpylztxXKeav7CdLSx8YocXAO1oFGDZdndVhuW9t8e
         E1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtWshAZptCycInVU8A2/9pVg3cFSrAiWrRtUM2B5a27XgngiRK5VVLHamwg0gnppKkHVc9vusbEKUO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2xFwmtju6ESKCxq1rmJbnXh7VV7nijf1D+wz2SBohbRQsBTdI
	qaz7zh1iCo7tiCJEEKq5AlSoWKzo+OqZEpQNgwWoVOUe0GcyO3Qz5WuP3eErffuSmI6+rxOvc2/
	loATbSUDAVsVRV9m10HBY9PuZqOslxEjOi0dYzENiYQRgaqe/yiC3zdlCexzC5SWh
X-Gm-Gg: ASbGnct/cDQZNKVbPX2U7Hx63oZW8e/iNBISa5hRLfLpn77okDnCpHNxatgFJd/AE9b
	NQXdCmtXExmluCKJK7KUS9+E38uuuEDwbDFkUVTLF9HLGGfweTZ2ciQEhJfwkSaxmPgrS1ybXVQ
	TxMyykfQU6xIUiIsr4Kw/Lwqa8qG8IPAMsv3dkOaaqIqAzK5Z6adi/po0+ESRFmFFzojj9E9ftM
	GLJud3u0hYkYDVTlU54mStQ1tIhJsfkqkJHtn9dh8Ef2BHK8GJFpf/gKeZ1WacgJmoxloJ2pVVh
	v3BGA2nzUA3vKv9cXU8Qp2fWgV8dmwX4ocUCZ+FlUY8gF3fqebuTCbLTRbderxG3ZDz2Y3SKSuy
	XDb9/pTEXZeu8r6R6CDiyz5B058sqpn/gks01Sf+QW4cZlXJOxR8ZtjyWOW4eK+Tuhb8LnRatnr
	fytMRGyPifC6tD1vWDNFXejFA=
X-Received: by 2002:a05:622a:350:b0:4ee:213b:3393 with SMTP id d75a77b69052e-4f03fd8ee4bmr177328651cf.4.1765295667123;
        Tue, 09 Dec 2025 07:54:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGwkVYLvqRqpc1pGqXIILoO5+sG+rVMRQKcAsFQhhN26vhakOC+G0nVRtgt+JBUwIYJPc4WQ==
X-Received: by 2002:a05:622a:350:b0:4ee:213b:3393 with SMTP id d75a77b69052e-4f03fd8ee4bmr177328251cf.4.1765295666604;
        Tue, 09 Dec 2025 07:54:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b2f346sm5185085e87.45.2025.12.09.07.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 07:54:25 -0800 (PST)
Date: Tue, 9 Dec 2025 17:54:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator
 support for Type-A ports
Message-ID: <elzlkxhjd7oqfs43dpsvxqavrdr4564sxdkshnlz5artdb2sp5@7dt3eexoitbl>
References: <20251209041701.3245452-1-krishna.kurapati@oss.qualcomm.com>
 <6awlcjah2ajwzxzdvoch5e3vn2ztvxyjdbikffhp6efti3f4wt@swhugoqsmf6z>
 <34aabb90-c81c-43eb-ba95-024f97d91afb@oss.qualcomm.com>
 <j62ntbrmol7qjqcuey3har3d74gqt573ew67w7nrnnhv3pzrnj@hptvrfbeaobs>
 <e41753b8-c4d4-4c4c-87d2-4475cc17f1f1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e41753b8-c4d4-4c4c-87d2-4475cc17f1f1@oss.qualcomm.com>
X-Proofpoint-GUID: k5EWGBQeH2fRZ3BYNftGzIJrfQGVpTph
X-Authority-Analysis: v=2.4 cv=dciNHHXe c=1 sm=1 tr=0 ts=69384633 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=sZuBUxzV6vxwNhJaUmYA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: k5EWGBQeH2fRZ3BYNftGzIJrfQGVpTph
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDExOSBTYWx0ZWRfX56UuWee+tcIX
 sEiN4uYyrqYbKMnFM2qseSlZWfLmqkic0ioEG3jS4OHStbi+WJM9WeR3p0U8SgPJltWN9QWjbht
 XKepdGO45GV67jYb90s5vnbgryoz8g3pdiyD7vWtkwWMb42O+0yQBl7gGhNt5wP1Dy8h0HiH6oP
 Nk8XDWsTErSIKb4o21blnCMLO2g5mD9J7l2Dzv5if8C6PaGBl5978uS45PTz91m76BzWS5kHGH9
 BOSU2Dgc1EznUdkwHFCigOOa00g3hZrDDsZ06D1zCih9Mwg2rfm2a0vKVi/00uR2Lim35+gz/zP
 3JD33XglVtiBZPgN14K2PinHKJokb1pcGoLLtd72FsQbS0+42QDzcW3K02r3Au3mu54JZUE3bqM
 g5z9j8a5Dpscozcqv9j0e7KDrofwtw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_04,2025-12-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090119

On Tue, Dec 09, 2025 at 09:01:02PM +0530, Krishna Kurapati wrote:
> 
> 
> On 12/9/2025 8:49 PM, Dmitry Baryshkov wrote:
> > On Tue, Dec 09, 2025 at 01:31:10PM +0530, Krishna Kurapati wrote:
> > > 
> > > 
> > > On 12/9/2025 1:22 PM, Dmitry Baryshkov wrote:
> > > > On Tue, Dec 09, 2025 at 09:47:01AM +0530, Krishna Kurapati wrote:
> > > > > The Multiport controller on Hamoa EVK platform is connected to Two Type-A
> > > > > ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
> > > > > regulator, controlled from PMIC GPIOs.
> > > > > 
> > > > > Add the necessary regulators and GPIO configuration to power these.
> > > > 
> > > > Should this also include corresponding USB-A connector devices? See
> > > > qcs6490-radxa-dragon-q6a.dts for the example of how to describe them.
> > > > 
> > > 
> > > Hi Dmitry,
> > > 
> > >   I see same discussion that came up when we were trying to upstream TypeA
> > > connectors of SA8295:
> > > 	
> > > https://lore.kernel.org/all/CAA8EJppf+j6H8vPOrer1Oj6SuM=qHKXoBahtCaCr7an-cbpyOQ@mail.gmail.com/
> > > 
> > > There is no entity (either phy or dwc3) as of today that can read the vbus
> > > from connector-A node and use it. So keeping these regulators always on for
> > > now.
> > 
> > There are two distinct questions:
> > - one is how you describe the board and onboard devices / connectors
> > - another one is how to make sure VBus is enabled.
> > 
> > I'd suggest having full description (with connectors, graph links
> > between USB host and connector and vbus-supply properties) and then
> > having the comment before regulator-always-on describing why it's on.
> > 
> 
> Thanks for the review Dmitry. So, IIUC, the suggestion is to add the
> connector nodes for Type-A ports, add the vbus in the connector and mark the
> vbus regulator nodes as always ON.
> 
> W.r.t the graph nodes, we can't link the connector to any available node
> today. Can we leave the remote endpoints empty and unlinked to anything.

Sure you can link them. Both DWC3 and PHY define corresponding HS and SS
streams. If not, you can fix them.

-- 
With best wishes
Dmitry

