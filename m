Return-Path: <devicetree+bounces-275105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOO5Oovjs2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:14:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B37281409
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E959D304A88B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ADEE38C2B0;
	Fri, 13 Mar 2026 10:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MFGh3MtZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BkkDFQCk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9237387344
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396761; cv=none; b=J1Bs5EmoSW9qBCncvJiqsiRytpDbOiDPXqb4DWjbWVtkEQn7RlpsTUjh46818gXaKaru6jb+8oRaUJQB+4iM2EzemA48XXAoVZqmnWyuVthN6yF71GDGpRW3YH0IUsN4iUBBK91qiwqOzoBeBWNssEsxtnfca2Tm6PWCB8Nk1tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396761; c=relaxed/simple;
	bh=B172fkYW7Adv6DaHXie+bx7lUl2FGfQKcSP2Mk55elw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nqXFB6Vg+/msaf0GN0U1TMNrukhHkLgMtGs/xeSwikqBeAw0pUbwIk7L5nHeJDr2wYTyALxfHK6k7j8FzptTMYi3CVwWR/AmSEgPbtb2Npas/jIfIbk0Iesg/AgyirWpfDS9ZIJKeIpXtXDLBPCC3+7vHjT582YwvhQqDYfv4/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MFGh3MtZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BkkDFQCk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oNrO793015
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:12:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9BbEuZS7Ng2OaOV9gLRRvHCkVS3SerYmz9AJm+sIdhk=; b=MFGh3MtZW5t215rV
	Y0EmGFw5oxojVseyXu/dAGoHih85aN5vbieKbldHEU9ewd9OEMje8z61kQQ73g8o
	99nG0CMRiYeD6GEngWVpqciV5s019zj21HCHszAC7VCznpcB6KIl6DGHqDz5Ua9j
	T3lVBB/3Ksv6iCmJfWVX+BdwucJb6RXgGYTkJRiXO3Xe+GN8FchCQQKghQ8oNE4r
	CK5RI8wq1J2ExUxm916HkrpUAuXcanjiARqeHRT935+uSzbuhHCEzSRMpxvzAKUJ
	Yp8XKZsN8eo6Q66GjUDPtjrmpyc0n/hHXvM+fL5c8FuI83A30mG+l5zt7F66kWDj
	vQ5z6w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt0r43-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:12:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aec805eec4so197005ad.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773396758; x=1774001558; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9BbEuZS7Ng2OaOV9gLRRvHCkVS3SerYmz9AJm+sIdhk=;
        b=BkkDFQCknUY8K/x1yfgumVQLjnXpY9cTg0+zNMue438XLGYEC1b1t9uM2Dftx+toUk
         FUJVYf8MBL9aHdDFNgaIE9jmExglbb0atcLFknRj9ONG5Ro8+BhTrd7EkNuposmyi1Mo
         rG8MZUhPIJ32fGBxc44aeaUQWTNq79Y/dSY/lQj5VlUjvxJ2YcBeUZMF77LChWOJY9WE
         mMlzrbDsXrtW++mNZmRo0KChtO2fxZUww2OINLLHx7HZuVACFbOp6qWXeq+XWXzXf1Xv
         GeRprk2EnmuYRdISV6GnlxruK5yPOl6yKdMzjxDA17WgT6mVzxgDHdBKk1HxIiQ+5+9U
         Aglw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773396758; x=1774001558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9BbEuZS7Ng2OaOV9gLRRvHCkVS3SerYmz9AJm+sIdhk=;
        b=F8U/vO2DqiI/zaArDl33Y5iPI7q/Lu9Sgv5bYiUXZgB5Wzi+gQzggrBMADz7suUxxg
         cS1Vkc8CyI3/ku3V0ASeuU/ydXNo0/CkIKbg3gSxoe43dreaNWQn3XONK+mtYuJVHX27
         jSKGXwYez/fnODt1a+Su70oGVnWrwJqAzJi2J6hc5ln+/38tCg7ctTGezziLNa0orvss
         auKsK2wdL0tOnL9vbJzPNTAXpxOTVj6zc0HRn/RDACg+M3BYrRvI1G0EPkdM3GftbMGY
         310pGjm3OlpekMc3tJ+w0MJAXKQUqWrFenRzPhkIZF+nmUBhAqIik/F5jYaORGix/m5u
         sdUg==
X-Forwarded-Encrypted: i=1; AJvYcCUEiaTr4GEQESGQ0wRla0i6ipQPa9j8iF2Qa18O/dwgwNywJNUJKM92J9CyHav1UMHMJnbG/HMPNaAm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9Y8ptbzpMx0AcWWF3OFKksVln7MGS+FthDAKGxSa0W5m+lMsm
	fgW3RsRuZXhhvobDgK1JGGys6XWMwRnYv5rCB1ybCTP9+9vi7JExqcBSAW3FqCnUEX8mFuW5xl1
	3iUn2uJ5yH5tV0yK1TmE3xTaivn4bQQWil8h0N+57DENwriGx72GmOXersnjZblJl
X-Gm-Gg: ATEYQzzwvT6Lrp0qfydkHxQdMK0hm0K07Axc+9gJbenKs1Hc6ec5v+2hQcYnYAecfiA
	BiDYucqoc1kvWYLdmbPJJuAJ4hHgGzvzlIcObhfMlQ7Qk++qB4CZBosWpgSx/gN5QxI3odxl232
	bC3WNMhWnFMAXIHzNucXxRQARw1wnhjNusf4h66DqC3rx6BzmiUACrZXfgM73rMwHY15Qx7+CuX
	LV5npLabKc+KT0D3kDnMu3pkSOPx2KItVlgbUzQL0c0XCSEzObkfvuVv+2NK2OUUGAhxnvMHrhx
	TO9f2y5v1KXrQj5riQwOIhTsOHBPF3wHPXArYaa3ZhspTWP5OGvGOBd1nt2Jz2eFx3AUs5+SVPB
	F/KDHmRuxX4tlzjjIJ5akyvVk9Yz7kcVQ+RSXgh2hKyjCIcJoaBQ=
X-Received: by 2002:a05:6a21:138e:b0:398:bcee:4519 with SMTP id adf61e73a8af0-398ecd1c731mr2379351637.41.1773396758391;
        Fri, 13 Mar 2026 03:12:38 -0700 (PDT)
X-Received: by 2002:a05:6a21:138e:b0:398:bcee:4519 with SMTP id adf61e73a8af0-398ecd1c731mr2379301637.41.1773396757828;
        Fri, 13 Mar 2026 03:12:37 -0700 (PDT)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebb96df8sm1680756a12.33.2026.03.13.03.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 03:12:37 -0700 (PDT)
Message-ID: <198ccf60-a4b9-438b-ad92-bc4d2cc84b83@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 15:42:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b3e317 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=j6RlDNsNG3S5HfLooScA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 7ar8g2pqG9tOmkFmyVz37ToowNgC33pY
X-Proofpoint-ORIG-GUID: 7ar8g2pqG9tOmkFmyVz37ToowNgC33pY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA3NiBTYWx0ZWRfX0QCyiq9rg6iy
 RugfbP2HpLLFR/pSxjQF0+DcyB8Ac2lFOz+octzY/RlktMpsPzmdfuVkYqEPGEWlPbU7Nv/f/8K
 QJ7n/LK+S0hkSz0E9nVTyyr8A+hoZdRODpHo0CGmu9+NTIGIn1R5EzwHZA3yF3QTj466PLVv5o+
 bkPOXxmKRtp5dkAFCASc15SCUV3s1Vy6sfYOW5AkdrQEJllou9pbIOYU6/RkmSdje736ruANy8+
 /p/31CDy8aDH8WW9mS9p6BjOVDTnaNzJTybGipmkto5sW8tJw1ecuk8ztl5T7Q9Sv8aDmhHfSAW
 tE5o4C+uHriH9FkATuRKb9Z6oSTduyzaz+ojLOTGnk23RJ7gdkGHSZpz/tuFcNIqjIpscmcHg8f
 zkaAPGNy7Pq/xDHXWlH+Za1fvKMYcXy7+H6MHCaY+YHGTB+/4avk3avNjdkGV+Ogua0uiUprFm9
 ZTOtgh0bDhzP/3Thhhw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130076
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-275105-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1dfa000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 84B37281409
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 7:41 AM, Dmitry Baryshkov wrote:
> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
>> Interconnect from SCM device are optional and were added to get
>> additional performance benefit. These nodes however delays the
>> SCM firmware device probe due to dependency on interconnect and
>> results in NULL pointer dereference for the users of SCM device
>> driver APIs, such as PDC driver.
> 
> This sounds like a bug in the PDC driver. It should reject being probed
> before SCM is available.

The SCM driver provides no way to check if its ready or not to decide to reject/defer the probe.
A new API like below would be needed here,

int qcom_scm_ready(void)
{
        if (__scm == NULL || __scm->dev == NULL)
                return -EPROBE_DEFER;
        return 0;
}
EXPORT_SYMBOL_GPL(qcom_scm_ready);

This is inline with what cmd-db does today with cmd_db_ready() API.
(drivers/soc/qcom/cmd-db.c).

> 
>>
>> Remove them from the scm device to unblock the user.
>>
>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index d7596ccf63b90a8a002ad6e77c0fb2c1b32ec9c8..ebecf43e0d462c431540257e299e3ace054901fd 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -308,8 +308,7 @@ eud_in: endpoint {
>>  	firmware {
>>  		scm: scm {
>>  			compatible = "qcom,scm-x1e80100", "qcom,scm";
>> -			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
>> -					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>> +			/* TODO: add interconnects */
> 
> Somebody will try to fix this TODO, reverting this patch. Let's find a
> better way to handle it (which would also fit other platforms).
> Originaly this was proposed by Sibi ([1]) to speed up PAS
> authentication. Other platforms require RPM or GCC clocks to let the
> firmware access crypto core.
> 
> One of the (stupid) ideas would be to add a separate SCM (child?) device
> which would be used for crypto-related SCM calls. I'd like to point out
> that currently we bump those clocks or NoC bandwidth, but at the same
> time we don't vote on the CX rail. I'm not sure of the firmware handles
> that somehow or not.

Nice catch, AFAIK firmware don't handle voting for CX rail during SCM call.

> 
> [1] https://lore.kernel.org/all/1653289258-17699-1-git-send-email-quic_sibis@quicinc.com/

yes, I had already seen this,

So remoteproc PAS driver gets performance benefit with crypto vote and interesting choice was
made to place it from SCM driver. It was evaluated and considered reasonable one at that time,
pasting from [2],
The clocking needs for the CE relates to the SCM and not the remoteproc, and it's in line with
the management of CE clocks from the SCM driver.

With my limited understanding of remoteproc, SCM and crypto,

- A crypto vote would no way bump up the performance of CPU jumping from/to non-secure and secure world.
  (actual "path" of SCM driver).

  if remoteproc requires the crypto vote for image validation/authentication then remoteproc should
  place the vote for crypto path before invoking SCM APIs, SCM don't really use this vote for itself.
  SCM driver though today adds/removes vote within remoteproc APIs keeping vote placement limited
  to remoteproc usage only.

- Firmware could have put the crypto vote if firmware is doing image validation/authentication
  after the SCM call lands in firmware and remove it before returning to non-secure world.
  clearly not a choice now to update firmware.

- I see crypto device too places same vote (at least on x1e) so i must be missing something and
  both SCM and crypto device vote are needed here. I was thinking if remoteproc should route the
  SCM call via crypto driver (which would places the required crypto vote) and crypto driver
  should then invoke the crypto related SMC calls.

  crypto: crypto@1dfa000 {
  	compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
	..
        interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
                        &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
  };

Let me know any preferences from below options or any other.

a) Add the API like qcom_scm_ready(), this has been tested and works fine.
b) Move interconnects from SCM to remoteproc PAS driver for all devices
   Take the vote before invoking SCM API and release after return.
c) Remove the interconnects from SCM and rely on crypto driver already
   placing the vote, Route the remote proc to SCM call via crypto API,
   This would ensure crpyto is being used and it would have placed the required vote.
d) Add separate SCM child device (with interconnects) under SoC.

[2] https://lore.kernel.org/all/Yr0Os5TOITY7f0Wk@builder.lan/

Thanks,
Maulik

