Return-Path: <devicetree+bounces-58392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEF88A1C57
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 19:46:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09699B33C58
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 17:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E95B58210;
	Thu, 11 Apr 2024 15:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ec40J9Ys"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35536EAF0
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 15:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712850938; cv=none; b=Src9oL1i8L1fBbAIXvYqSVq1Hr59s4p3+l1OAG5UxazSroZuS0hjxoU8TANolm/PkFzfS1C+P1NvM6P5PcPu/zXrhTYQ0gEaDXcaUNoH9zxklCIoRChjzJT3PaFzY3iNdy78pnt2kJwZ99IO2CfrNj47XltilXQljCbFLBQfk1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712850938; c=relaxed/simple;
	bh=bwMM0kFA735yjVxBvlQs9+78mFA56Jz54YvJCjf+JII=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=V9X0YGyuQu7bvqVKKeW28xQgwVUr8kl1dvtuSh+he+//0c7Akm9JtbB+PArFcjQ6HWCru3u6lE2wlZlcMA/zhsZE5zpLbh8UtVS0Qet1Bp8rE08JvQVmvIHInZmZGoewwlOmgahtPKPZtQuJTppyNQLojxeWOeJdwF0Ht6dIGLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=ec40J9Ys; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43BDinpA019122;
	Thu, 11 Apr 2024 15:55:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=WI62u9lETy8+6xx/WMhueXWm9WomXsxXrOymdy/sqik=; b=ec
	40J9YswffKDLnyJ5jWd6riOOMcvmCutIMXGwWXmu+vRmHuoV9REXOYFFRpzm7vbE
	Gt14UG8kMBA2LChiU4sK+XVIK/Zp8jSeGpjlllXW+rNxc9ZQc/GLxYQ0Ka4JxjGY
	WIOgCuR9yTr/a4H1sQLU3WNjtKT02D+n1do5XKVSdFDyrmJiw5emFCzL9GP699Is
	RlrW8UI4YRssI4mzBHn6y3wRPgkcmZlt/fye3n+U0HZnJ9n/PnkJ0KBDePFu4lCl
	TjSGI0w9xzIHZraCMD7BiaJ2txJMzFD9/zf9OLpbO3gyRnxi3vIeqCDQZ1UHP9pP
	hJRpVFm5YnxAjg6dyuBQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xeb629urv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Apr 2024 15:55:28 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43BFtSYn023556
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Apr 2024 15:55:28 GMT
Received: from [10.110.89.60] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 11 Apr
 2024 08:55:27 -0700
Message-ID: <5293ec04-917d-4df5-8ff9-58b12cf01bf0@quicinc.com>
Date: Thu, 11 Apr 2024 08:55:26 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Conor Dooley <conor@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sudeep Holla
	<sudeep.holla@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot
	<vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>
References: <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org> <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org> <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org> <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
 <afc07c5d-640b-4eaf-94a2-086a6d43d712@linaro.org>
 <ae74fd28-9658-4461-9b4d-e31443e7d377@quicinc.com>
 <20240411-platinum-phonics-864bb08dab8d@spud>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <20240411-platinum-phonics-864bb08dab8d@spud>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: bodrpXifjYxeMsU6VQ5Hs8oEIw2dXzsz
X-Proofpoint-GUID: bodrpXifjYxeMsU6VQ5Hs8oEIw2dXzsz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-11_08,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=568
 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 clxscore=1011 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2404010003 definitions=main-2404110115


On 4/11/2024 8:44 AM, Conor Dooley wrote:
> On Wed, Apr 10, 2024 at 10:24:02AM -0700, Nikunj Kela wrote:
>> On 4/10/2024 10:13 AM, Krzysztof Kozlowski wrote:
>>> On 10/04/2024 18:55, Nikunj Kela wrote:
>>>> If there are no more questions on this and everyone is on the same page,
>>>> I would like to conclude this thread in favor of using a new DT property
>>>> 'qcom,firmware-managed-resources'.
>>> Just to recap my earlier statement, because I am not sure if I got the
>>> answer (if answer was provided, then I don't forgot... sorry):
>>>
>>> This is a new hardware, so you have a new compatible, therefore any
>>> additional property is not needed.
>> This is not a new HW, this is the same HW with different FW and interface to
>> FW is different too. As you can see earlier discussion on this thread, new
>> compatible was ruled out since it is the same HW IP.
> Can you link me to the post that ruled it out please?

Hi, There was difference of opinion. While Ulf was in favor of new 
compatible however Srini was against it since it is the same HW IP. 
Please check the link [1] in the same thread and subsequent discussion 
on the same.  To resolve this difference, Qualcomm and Linaro had a 
discussion and it was decided to go with vendor specific DT property.

[1]: 
https://lore.kernel.org/all/CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com/

>
>

