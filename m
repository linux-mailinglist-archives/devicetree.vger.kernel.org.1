Return-Path: <devicetree+bounces-262893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDOCE9RZhGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:50:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA24F0070
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FD81300A616
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85BBB356A2C;
	Thu,  5 Feb 2026 08:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qj0pRvr/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j0VKapoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E12F35295F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281425; cv=none; b=NnC4Q0hk1P2O5imkibKYlaL5x7mht4Gn+bLXsKJb2AZOj4/9jMMGdujL39NvDd30VvuMNiEiiWaNEY/A8IxCwCGKv1fnoCLSmi+qUYcoCdtumYzlWbI9NsDQ+KXdv60nYy9tl9J4S/ke9JcJIomReYnpGaAV5GvDtzKyD/2CjK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281425; c=relaxed/simple;
	bh=lMfhic0n6/DzWdKV2OJ94+DchbyFqIE/ZgveGmoy7ks=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K9osOTxweGcFhaat6PgwQuBfQCmhchOk2sd0QXWE1Y/rJosaDy6CMKY8XY8kz7CBMoXztjGlu4/raQl39G9s4neCu61N+ngDDC7pivYcLJgGXDAukqgubhE/hbArlisfm6g9CfooYP5rP1sKg6pDNJYNDhsYxGnttzBTyWwVX7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qj0pRvr/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j0VKapoA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61555u2l3047940
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 08:50:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8qX8UEt+m6DN2gO3Tv3pcDL6T8bCOnlpiaOU7EeAsUQ=; b=Qj0pRvr/JWgs9Lgv
	OGkTv5JbAB2U72Wu2FtU7iYRJQBZUhrILHPgeXOj3tdyzsHRVkaNXIjg18AkUGOZ
	jbunmaR7KfDk++71L5EBKI4DL55wysZ9fBl9IkHG4nTbKjvLiuFcF2kTcwFFDB0f
	zk2t5Oa6HS4GqD+NoFaO60K42zElSCyV7Y+MaFtdfqVbA9+YtG9mgmn6jVEXaJN0
	+RmAeXY1pfAxrNjRu7nazFd2BrK5XYgv2QhArl6jsy0wvzOpMbkRVn/l3NmOhtuL
	a1NwtBDr0nMa258I8eLyN6bOpVGIvljf7bNzBS7J22S9PZmUsiNp0Gv9/xM97E7m
	XLobAw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4mrtgmry-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:50:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8946c23cf90so2563566d6.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770281423; x=1770886223; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8qX8UEt+m6DN2gO3Tv3pcDL6T8bCOnlpiaOU7EeAsUQ=;
        b=j0VKapoAf5jZ5jVCPRxUaXenHPIXs7PS5JeMZvpnu2dfHu9sRECEfcYH+CXN0jutNP
         /gaFajYW7Pr0ngqFI2xZk+sA8yJ81c76yKiXYI/e7tYhoO3eMWaFW43nWyKdRa0VsgJ9
         l2w1D9FUtk9IvcYMgpT5H80mXj87xVBj+VTjWAmUIL+MMzurn4NXK3ZN7XbC1+KHli6g
         ti4iqvKP/SYPQgztyqM7daZ8METdz/IDWqU3B06ibBdRjsfsqnq1FL+/Y1bJ0kliQfwr
         RS/wyM75hEx1K1Ix0OLqYcwxgWTJZYf8VvIiynrd2NHFXEcPhdOxljscvg4sX9RG6CJ3
         sN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281423; x=1770886223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8qX8UEt+m6DN2gO3Tv3pcDL6T8bCOnlpiaOU7EeAsUQ=;
        b=njMPWf6kPXtSDReSbMdHsaVstwjctyiuef9VDinbTyBoJ0vM4UrSp+OmXOC9KwoCLI
         f8cfl90lUCwvi355zvv6yf6BgFB/uq/jlJAIjWNjXq0+CBkofLVk0lzurm58HmeXxlf/
         9Odz7e57hbASX2+5F9NpKs6y9JXiYz+ubsN81FSHkFSO++bT7G7UJEmN4EMx4hgwsRxp
         QgKAbbwoZEglFfSuFDV+QcoZclKw1x2j8KQCgghmGMzknkFFTwbRXRsnawedh+14id3M
         3C8YAYJOvsJadIiO0JKloSe7Ei9lFjSl16UAGA8FwOapyutHu2rxZyqK+MMgHGNeBju+
         IWbA==
X-Forwarded-Encrypted: i=1; AJvYcCVfSfjpGNRXtjWO3vSOz0tOmBQvZFRhztKqawLrl/nF1VxSLPofgMNgU78tDTDdR/XXLotMGmvNB0cP@vger.kernel.org
X-Gm-Message-State: AOJu0YxQWxbpGjvdhkzix8jjzZQ3S1erYsaJLj7PVz4MDhm0AlrSR8R/
	pjht0sR3o1WH8e3TLuAuclA9Oo3OA8lqzHJyCqsvydYT0uqd2UDZNR/eyAbvvzULdjbHIew8DBW
	3ch0m5/TNJ4hYsNZPM+iqpkW02GW7pUfsytpTL8WgH+PJzeNvJcvcGTt37vwVWWoe
X-Gm-Gg: AZuq6aI6CB1XUt9wKQFerhHZS2+ma4j6pl/0ypftuZQWpf7SRKhI7ReSN5jELWkg5lA
	yFTg0uhX/6BDa+ugeua75iqIO5IG6GqGSUpYLJHD7yUdfCDMpBxNiygWWTzRhoEQRlV7VCdnT3I
	2q0G0B8xWvmG0AnkVlFeOijM24ep3V1qzyd8qztMtknIgyBZ0CMB2UWjg6nnUQ6kWBI9Bz9qZR6
	fk8fx2FsZWgLOeNOxXKaU0NtNoMbs4XfSkgHLuUE0fr9UrxNiXjx7zX3WqI4xtDYe23HmfvBte0
	Chh7fIf2N4Q1bbyymfGF05k0svu003IvfyRphGHepO4PpwIuOTYLxvWTBe4yFis7X3xcTwwzY2z
	cNGfSCYLowFeOQGd7HeyFNyDqGRU1FaDuQtNXnHVC7fNy30QkomJKeJ8+5B1IzMCReMg=
X-Received: by 2002:a05:620a:468a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8ca3303d992mr488859685a.1.1770281423403;
        Thu, 05 Feb 2026 00:50:23 -0800 (PST)
X-Received: by 2002:a05:620a:468a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8ca3303d992mr488857685a.1.1770281422962;
        Thu, 05 Feb 2026 00:50:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fcd8f17sm207101666b.12.2026.02.05.00.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 00:50:22 -0800 (PST)
Message-ID: <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 09:50:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: property: Create devlink between PCI Host bridge and
 Root Port suppliers
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        robh@kernel.org, saravanak@kernel.org
Cc: andersson@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        qiang.yu@oss.qualcomm.com
References: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2MyBTYWx0ZWRfX4qTb8D2Qg4ee
 sy57fwgLVdXbK0HSZTytVPHlaIfkR8z+3kXqP0TlHE0Kqqb/sAiJasdg6ol8XSQqjMtmJy3yi56
 JDxB25W3+SdGz0g5PJ71BClOvC0h+YvI/G92AgzB+hzAkEWIa9rdaw0//cyn8qA4+KYiKjms8dE
 VKrQIV+k7T8+TkfVrgpvuQJ9L2Qb/o0gbCuk7UQ1OuRWACdCqPRzaWNnNMSVnlRkCTOvPeRTSSy
 BrNbLpQORsZkFhNxQ0aQWHmVzxgKGVHESPkZa8rfCqQRH19z1BFyopX/Hq1In0COvrNeeSP40wN
 8SWvzmVzKLetAS0BhHybjSYEbBh3vyZudbxvgQ7xVCqgCmh598YWBlXoIF6NUR30bijDthE868b
 N/Gaxa6X7tJFTgQb2gLFo2qIg8dAGsrGRmhL2FNONJ7g/pz1Lej3gmuo8KxahV0JBcsquT5BYzq
 c/y2aK4/n2nppoIO5bg==
X-Proofpoint-ORIG-GUID: RZc7LAubyJLGoIPuRR7j--Az_Ob5hBrX
X-Authority-Analysis: v=2.4 cv=UoBu9uwB c=1 sm=1 tr=0 ts=698459d0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yxBm9irkQl15ksekz78A:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: RZc7LAubyJLGoIPuRR7j--Az_Ob5hBrX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262893-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8DA24F0070
X-Rspamd-Action: no action

On 2/5/26 8:06 AM, Manivannan Sadhasivam wrote:
> In the recent times, devicetree started to represent the PCI Host bridge
> supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd4207
> ("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). But
> the Host bridge drivers still need to control these supplies as a part of
> their controller initialization/deinitialization sequence.
> 
> So the Host bridge drivers end up parsing the Root Port supplies in their
> probe() and controlled them. A downside to this approach is that the
> devlink dependency between the suppliers and Host bridge is completely
> broken. Due to this, the driver core probes the Host bridge drivers even if
> the suppliers are not ready, causing probe deferrals and setup teardowns in
> probe().
> 
> These probe deferrals sometime happen over 1000 times (as reported in Qcom
> Glymur platform) leading to a waste of CPU resources and increase in boot
> time. So to fix these unnecessary deferrals, create devlink between the
> Host bridge and Root Port suppliers in of_fwnode_add_links(). This will
> allow the driver core to probe the Host bridge drivers only when all Root
> Port suppliers are available.
> 
> Reported-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---

[...]

This is not 'required' in bindings and device_type="pci" doesn't uniquely
identify root complexes (as can be seen below).. but I suppose this is the
best delimiter we've got

Perhaps it could be made 'required'?

Konrad

> +		for_each_available_child_of_node_scoped(con_np, child) {
> +			if (of_node_is_type(child, "pci")) {
> +				for_each_property_of_node(child, p)
> +					of_link_property(child, con_np, p->name);
> +			}
> +		}
> +	}
>  
>  	return 0;
>  }

