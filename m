Return-Path: <devicetree+bounces-217777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF8DB59329
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:17:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 770151BC423B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7543019BE;
	Tue, 16 Sep 2025 10:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pYodLLOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B119827D784
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017814; cv=none; b=NrEZJbK2JOf/43IsxM8aHiCzH4fd7mqcgdkauFDhaESmYSvr85YibrqX/GcBfVxsjMzPfF1O4MFqwwuTvEPKgcIPGzobKRDo4px6QJHcaqRvWrfzQgAeTJZ4+Y5+4AX8p1gK4U3pekByaF+yX/X3lVZzWzkyzTYmB6R7w0/GXrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017814; c=relaxed/simple;
	bh=ZZTjg3nESIJaMyExBV/VDYlLd9/ybfakJ0TFBxehk+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=so/UTYsN8JMbz00z9pgNaSx9KU4lGJIpDQgFH6aNM7LqfmVIr7xnf3vZRi+n0q3YwXqX0Ue3xfk8rcdyet3NY8OxmWY8WSXyINJmoKtvYX133XeOPH+nOsvyUfnoy26NqxOpL57btsAiAzTynNKeigUgBos5383KccmfPbvg+uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pYodLLOu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3puiw018557
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:16:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=r5q7Ptg3IDb5aGHpR/B6NYC/
	GiSBXmLjKmkevafLTeU=; b=pYodLLOuHd0OOa+UEZZOQmlXHdy2260fWcB/BarZ
	pU9PIakrNMRjRQLY/sl7jxmSYEhDUPyoywnz/SyHYlhFQkNQglWuQnApultaGt73
	LkNiIVNx+A2cX7rHHmFFcEiECUU7tKU/VJ9FaTH8m8kvc4FMyLD5prt4ela78Z4O
	kd/70erhbgDxLBGizdkXpvOu/v5DBMG0574a4gTHZbJIqWunXiFnJEGnwp6akdqj
	bLn/W0CnGL7oaDc5/dTGoWLRwGc4BdmZy872Bhof0tvig/UglZpZmPQfv19JQ5C2
	XCqlHJWLGFi0VmeaK6dGISzwDmjAo4D4LBvYb2vHJ6HwZA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496da9cv22-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:16:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-77c23fc66b7so40539066d6.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017811; x=1758622611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r5q7Ptg3IDb5aGHpR/B6NYC/GiSBXmLjKmkevafLTeU=;
        b=xNBnuRVTrZ2nJPi4fEqeORUumutfUhE1b9d5T3FdU9QfqMmDAhIkd/kcouTusJpDrg
         owxQkLX3zbj492Miw8FbBQICUIVn0CjZ0QGS8OjkGwJ3NMvS8JMUSYT9ASg2LS2O2C2Z
         iq559Aro6OddEmKRFLeKgWrnSDEghYQwOSxf+1UxyV/O0sxPhoDQ182380WhYFdKEzYr
         VL6a1yhEOKj8jNdkXCf217I1zL8BG0n9B0Zh8oAK0aKLNzh7NrU1LQaLOYk2uhEsC+hx
         V3G1oKGBqfKh0Iqmv5Gi9LpIIZsPPhyBxkUxLxdWbHQPOrbQ1+KNj2gG57ijRp7HR7Dw
         S09g==
X-Forwarded-Encrypted: i=1; AJvYcCXKp8uCje6XuVQEqhzBF3MJjscHtyNjO8MDCvoIOEdw3lKJ+lC6dIDbwpJAVaNRSmjCH8cy5D9Ps/9J@vger.kernel.org
X-Gm-Message-State: AOJu0YwWCL3CDtBeWuqb4Tcw4K9wQAIw/DoTjNOlI50u/qXPW5t4y4Bw
	vxTe4vNhWLGOkjmV0ClF76F7QfnfXWbk+YBHDXw63tcXE4elsm5WBRMBpjapYuy9yIpWfH94OVB
	8pgNIcYeyR7SLgnW2J1rhd8nnkhQS+X9zcphLgfOgnNCmaycaCNDLTz/EG89BJz9P
X-Gm-Gg: ASbGncs1St+1BctAzV/6N8r+CxWJFVp2JwRF53l5nheUf/stvVqBkinjv0F6iALa4yv
	pIJBaN+tgQ0E4/6x8rg82QLN/4UxAFIFmtqZk1thWeOD0a6mW28lxB3SQPXJn0hGb/oqbx7pIdk
	DC3ndbEabmlRj8YRaBL4UCKiZRGwvwR/EVS9Wf8Hd6OwIaOYm9HlR1eNZ/0FZ/PGnLq3wpt2RSr
	jNBdYNZnoMjcsdonKPUOrzyxBoMVIvw2QsJzUiS5cfSceTYHrdgWnAmoXFeW3FM3rAAJtW70Bv6
	iR2wtZpPX55SCs+deHIwWxmA80r6ZV5aFRjS6UbqNRjU905SYLL3DNC10/5n3uu3/gdUPhpZdxt
	6luYIhUFi3rIOkOxU9HMCG7DHrUPrx6tFszOvnlz50Pbdt0zs8gqm
X-Received: by 2002:a05:6214:4287:b0:76e:7c27:f03a with SMTP id 6a1803df08f44-76e7c27f5d0mr62114116d6.24.1758017810593;
        Tue, 16 Sep 2025 03:16:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyThvaMCTHqAaC7s4keMOJ2X/m+LlZYzRAuUnW6jCYfwPDs8ID5mqt+pz5VEB+vkErkc/XZA==
X-Received: by 2002:a05:6214:4287:b0:76e:7c27:f03a with SMTP id 6a1803df08f44-76e7c27f5d0mr62113746d6.24.1758017810098;
        Tue, 16 Sep 2025 03:16:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a32f66sm4186723e87.138.2025.09.16.03.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:16:49 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:16:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?utf-8?Q?Gy=C3=B6rgy?= Kurucz <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/8] power: supply: qcom_battmgr: update compats for
 SM8550 and X1E80100
Message-ID: <aiplezjbovtaghgblua5xj3rag5kjwzt6sjrnygzbez5dtaxm3@vn6kwmskc4e2>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-5-6f6464a41afe@oss.qualcomm.com>
 <f3s2srlmvuj7wmh4rndffmbfrzylbuq4rsu7pqqrnqa5fgsmch@t5f4dgmqtgys>
 <c5e3ac07-e91e-4c9f-9256-497991b75200@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c5e3ac07-e91e-4c9f-9256-497991b75200@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=M+5NKzws c=1 sm=1 tr=0 ts=68c93913 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=R-MLo3Tlqdaq_EXOKnUA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3vArf1m-s10Lre-8Dz507n6yBu8OWtKS
X-Proofpoint-ORIG-GUID: 3vArf1m-s10Lre-8Dz507n6yBu8OWtKS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA1NiBTYWx0ZWRfX87hQ4zpnx+Y5
 FzXBPcqr3KQcauAygxYjD5DYjnc1fTNmHj41RhzE9krMp7Q/NI3C/x7c++8dEpEZ9gSIwxa4XbE
 VFcEf5FcxN5bJ2HYQqvjFUMR/KBv0u0GRy3uk9xd00uAMoeJY2dny9DIcFkNYjyUlEKS8XFD6q0
 2sI6h58bw06Lz72z5K/m0hPT+GfNhUN4ZbCfK74YPZrUhA5k2gcGRpkVCSTdsbSsmukroOCexmV
 y7mAncC4bO8Yx+9fkRLYI33vWR1+i5IAORl9OJlv6sc0YbiT2wG3deiKsLf67kvm3iR7covcxvy
 QBLDozZXKbB11dpHjVUGsfT+KhNik8IzC+sS/+GPGuWGSJMtBe5H7MUh16/1gdpzOJpW3IoHfJS
 O+hsm56q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509150056

On Tue, Sep 16, 2025 at 10:40:03AM +0800, Fenglin Wu wrote:
> 
> On 9/15/2025 6:19 PM, Dmitry Baryshkov wrote:
> > On Mon, Sep 15, 2025 at 04:49:57PM +0800, Fenglin Wu via B4 Relay wrote:
> > > From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> > > 
> > > Add variant definitions for SM8550 and X1E80100 platforms. Add a compat
> > > for SM8550 and update match data for X1E80100 specifically so that they
> > > could be handled differently in supporting charge control functionality.
> > Why?
> Is the question about why this was submitted as a separate patch, or about
> the need for the change itself? The reason for the change is explained in
> the commit text.

It's not, and that was my question. Why do you need to handle them
differently?

Please always start your commit message with the description of the
issue that you are facing.


> As for submitting it separately, that was done to address
> Bryan's comments to split out the compats changes. Anyway, I will address
> the further comments from Stephen to make the change bisectable.
> > 
> > > Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> > > Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> > > ---
> > >   drivers/power/supply/qcom_battmgr.c | 7 +++++--
> > >   1 file changed, 5 insertions(+), 2 deletions(-)
> > > 

-- 
With best wishes
Dmitry

