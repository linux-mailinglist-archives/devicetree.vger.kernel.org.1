Return-Path: <devicetree+bounces-269778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PxbLGP3pGkExAUAu9opvQ
	(envelope-from <devicetree+bounces-269778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:35:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B471D27E0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8772D30154B3
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D71E27FD4F;
	Mon,  2 Mar 2026 02:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k2d043Eu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VJsXAXuF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BC920D4FF
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772418903; cv=none; b=ITVpVxqlR+I0532CQ3guHXRXwDBp8BLq4W5TRHZFpnuhsLmyU0PPRodDs6K5ZNhncRBUwC7akverAsFw+lkAtLGkJ/3Bt/60EZRx4peqlsocrv9GjNfa7T0PcRaorPVeoLId5DlEgfMnsDltcfI+s2eI4390n8ChCKo8B4fzHQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772418903; c=relaxed/simple;
	bh=Xs8kJot3WRbpDNItkcNVq8Y7Uyd9/cwu8VHxLBqVH40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qoZ0O4kOWp4RvAdxf/u5qwnjlQgdbZ62XbHTgmHsmRPzsMScTI4uE7XVkoGsv/fOEdjE7H30HI4HM08vD+6ULFx+zK8uy7ig1eClDJ3ZgAiw5h3DceLkkU+3MFjbpIBSVYU9Aet7qf3AaMoELZGYj26XgCDT99wLlf1Le59IEIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k2d043Eu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VJsXAXuF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621KY5WP2018828
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 02:35:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4DqqZkXLphrWO5J1IJC0ojtVAG7Macz0jvAFX5TiYAw=; b=k2d043Eu0CqLN2DW
	Kn6jO8ZlRztn92pkrbRSNJb4P/qh06cLPxF06HvFvNRnXw1rE3HRc2oRyTgLwJaP
	0VPsNkMLIq8ZUc4YUuEL2lqGo/zUPcjWJKbPds0sa9paxErImXrkGIDSOwxvXpm0
	g+7im50yTUsyyUZ3QwqYhY+0gTNJIOuplr9Ezglok3qO0mr3R1M7UWe/XMBlMjri
	p6rZ3i2+viL6qZvBv/CH36+s4dtOFYLjBsbW/EzDKTo1R9DTWM1qHmi0VaUc9UOL
	VGvgwtAPyTgtio6m53xlDBD5qlKEq9BLlYGkwnzezkdgFvXJ/kbxiYJiNddBb5JZ
	FgsASg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfd3nj6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:35:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3598f390129so70252a91.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772418900; x=1773023700; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4DqqZkXLphrWO5J1IJC0ojtVAG7Macz0jvAFX5TiYAw=;
        b=VJsXAXuFTM4o2ZVTypkm5k+0LdgcRrxBh0k8UYPxHV6V2Mzn20FzktHDXDRLQtCqn0
         f2Dl+VAGFqVf2hehZNaWfO0v4EZ5H9NztFMB+LcmSu3CMTODp/SDBF/6wGsYgcXzLdZN
         GaJuNQvDFGlcHMf8WWDSsbKf8VC7qq9LItjzW7AR9nnXIMrZNqyt5mvFWuegTLuorNKv
         DPRX0s0KMsn9ckaHx49EDcFq77beyI+57aklEA7FqAEmMQBcHAZq1+EA1TeWmL8XzMlh
         JuoymuWUNSnGP6YcwM3eruQO2iJUF9pnoE2pcnnUyjRUVQX4zcyv1ZTmA2fNpyMMvftf
         P5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772418900; x=1773023700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4DqqZkXLphrWO5J1IJC0ojtVAG7Macz0jvAFX5TiYAw=;
        b=CexLLn153BYV3mMFM0J3cTTSWT4GuXNXtEth8Kit881nS8oxh9fPPr0v9hlPj1uMyK
         zMwnd/ENLHzxpLQdXqSbH0r/ksTSx1M6mgVnZPTgY8lCCK0JfWJCDEUu81Xaa0f4OgUU
         zRO2IiVIyjHYkohOcv39X3MOEpLhZAwe14xyz6V/XhK3jEsknlW7kMcCCkmL+Zq939hY
         qgK/SsxQ+paChIvoxJHv7oiIIQBmn0Tg835ikLB+iataWbOJM3bAH+tfiMeN1Aj6fop4
         HhqMx76pqz69A30JnfGLZ6lYvbliesnMVaNLj+YiOpGSozuKPUQJF90khWvvp4nAYLcQ
         5yUw==
X-Forwarded-Encrypted: i=1; AJvYcCVeOsd2G2+eyhwl5DnHB3DWQgQ0SxL9XEH3UAxg3cXkEzIHlurtmGIl7lxrrDgGRE4Z7hRjLRmg9p5R@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr4k6mQtTjU2rcMDLi9k/DYeq2hny1zFD+Znc+iMar20pS0s/6
	1n1/xfoJY9wUuewbaGMpCkXdxNe+fS+tH0A6pFoF1FyoH1M1RndFemlQRp69bZYnLOnVRrwnlbs
	f4QzoAOr3OYLvWMdF/DkV5UGWICeBkkQgxc1tyZurD1eYkDliZoHtz6w3YHnCK2SS
X-Gm-Gg: ATEYQzzVRPHCTZ9IS+f5L9Drtg3lon91pq2DBqiFU8NrkZfST9gRU4Ekm4PkxLjsil0
	xiAa2D31B1dlywXw+HCQnEMBUZhVBc7O+VBQO22E5CB+fqf0LieWfpCAtcKrTwk9urOvEr7Q0rh
	f7ho6aPkpCXwz2x4gr2XaMVY6LeYDpQQ6LvEzcUmEFDzgjeqfRgY+16A+Pqe3iPZVzcIQlyu8B/
	8otmsCZVx9XOcZtQJ4z6OCLaXS0NyfJXSCdl55v0i9lsY9kSUV7Qr2Q3bAq+ZE4Ngvz72VRauPY
	/TDaWdy2XV3AKALJBJ9ImPo6Kjb414F+gpkokoKYL6quzqKvMxEXLJxTq7Hg6kKWaufYeG0uTtL
	JtgUs2vytY3nnvWzVHjuwZkacXCHfiCM1PMvDBDOWFgs=
X-Received: by 2002:a17:90b:5688:b0:356:1dad:1b04 with SMTP id 98e67ed59e1d1-35965ccbadfmr6626668a91.3.1772418899740;
        Sun, 01 Mar 2026 18:34:59 -0800 (PST)
X-Received: by 2002:a17:90b:5688:b0:356:1dad:1b04 with SMTP id 98e67ed59e1d1-35965ccbadfmr6626641a91.3.1772418899135;
        Sun, 01 Mar 2026 18:34:59 -0800 (PST)
Received: from [10.253.34.61] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3598e71565asm1011530a91.15.2026.03.01.18.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Mar 2026 18:34:58 -0800 (PST)
Message-ID: <5559144f-cd46-4fa1-89a2-8d54a627ed04@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 10:34:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth
 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-pm@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        shuai.zhang@oss.qualcomm.com
References: <20260225091700.286108-1-wei.deng@oss.qualcomm.com>
 <954f6a53-b597-47dd-926a-adb5a7513edb@oss.qualcomm.com>
 <c1355057-486d-4852-8fbd-f9916786de06@oss.qualcomm.com>
 <e544645a-e113-4ff0-bb1a-3a6577d6a83b@oss.qualcomm.com>
Content-Language: en-US
From: Wei Deng <wei.deng@oss.qualcomm.com>
In-Reply-To: <e544645a-e113-4ff0-bb1a-3a6577d6a83b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: blcVFiqovgYgCs7LijuacJ-reFOOGvS4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDAyMiBTYWx0ZWRfX6UPIpK3PydGo
 uVP49TTyybY3DoC7uoEkAWqssF4cowSdtioCOqSEiBzoDbmfp0fUfT5mvlx/Xwv7DH8CJF7mZUL
 SMaeXwMfw1Iv7c0thGNFlq3IesCxoKT6EQlBo7gg7mgy7uEzi2kWlcWn8D/gIXseSVSDnox/DT/
 B7HrA7/qUQ5ubDRpKBqMDb/lBGdg70kc3ZB60eBWG9SjSpG8SWcFNtv+nUpE3+WR8cBphEhPyZ+
 Jyt+Im5knjYlXNZSGYtccQYYWZ0O8JUmN95pVOjZJudeagYOy7Msr4j1YzA+SaZxSIMyW2RYbHL
 GFZbOT7lNOksn79oJrGNikWFVSNVynISXkXZxpUr6quE2tVIwOeDvSF3sqURY28T6NsSEg5ByLq
 nXmLAuMKhWf4OZxV14kGSL8MwBGzfKf3GZmgrVgmj7C++/WHS7zl1OMgjahpbViGK9FWneJwAbn
 bT1uo3uMD3e4uc2+yKw==
X-Authority-Analysis: v=2.4 cv=HKDO14tv c=1 sm=1 tr=0 ts=69a4f754 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1VQt4_GuLh9oJCfVlm4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: blcVFiqovgYgCs7LijuacJ-reFOOGvS4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020022
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269778-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,holtmann.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wei.deng@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 28B471D27E0
X-Rspamd-Action: no action

Hi Konrad,

On 2/26/2026 8:15 PM, Konrad Dybcio wrote:
> On 2/26/26 10:14 AM, Wei Deng wrote:
>> Hi Konrad,
>>
>>
>> On 2/25/2026 8:27 PM, Konrad Dybcio wrote:
>>> On 2/25/26 10:17 AM, Wei Deng wrote:
>>>> Enable BT on qcs8300-ride by adding a BT device tree node.
>>>>
>>>> Since the platform uses the QCA6698 Bluetooth chip. While
>>>> the QCA6698 shares the same IP core as the WCN6855, it has
>>>> different RF components and RAM sizes, requiring new firmware
>>>> files. Use the firmware-name property to specify the NVM and
>>>> rampatch firmware to load.
>>>>
>>>> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
>>>> ---
>>>> This patch depends on:
>>>> - WLAN
>>>> https://lore.kernel.org/all/20260122053624.4068718-1-wei.zhang@oss.qualcomm.com/
>>>>
>>>> Changes in v3:
>>>> - Rebase patches
>>>> - Remove unintended 'output-low' from bt-en-state pinctrl
>>>> - Use prerequisite-message-id to replace prerequisite-patch-id (Konrad)
>>>
>>> Only now did I realize you're the author of both patches!
>>>
>>> Next time around, please keep them in the same series, for easier
>>> tracking (since they're very much related)
>>
>> Just to clarify — are you referring to the below WLAN-related patch and this one? 
>> https://lore.kernel.org/all/20260122053624.4068718-1-wei.zhang@oss.qualcomm.com/ 
>> If so, they are authored by different people. This BT-related patch depend on it.
> 
> Right, I seem to only have read the first part of the name.. sorry about that!

No problem at all, thanks for the clarification!
Appreciate you pointing this out — we’re aligned now.
Thanks!

> 
> Konrad

-- 
Best Regards,
Wei Deng


