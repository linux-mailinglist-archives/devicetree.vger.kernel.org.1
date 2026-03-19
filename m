Return-Path: <devicetree+bounces-277731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPljIY/eu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:31:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0866A2CA501
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD21D3023A4F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B0235F181;
	Thu, 19 Mar 2026 11:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SOzpidnc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WrH/+63Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3985E364959
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919875; cv=none; b=La65x0/zPGg//rBCbVyB0/8e5XutzU73PSHE8tYvAUzDNiubZK0QqTP7Ri4MH2LrTXpjbxV8oFt8b9gHq4sdeQrNH89UnoJ61f8BgOn2/IuS07gtCpPf0zwHyYURCwYVwW3E++Eeqc3UFoA/Saguz7JPJ2OX7RABqGUmlzkNdhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919875; c=relaxed/simple;
	bh=6RmqrALrlNdyMFuS3WsguhkEzeFwcu2Mk++JT4DMms8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kfh7WLW1hF0aVTyd0OmvRfwGEmXWFzcMAOxxrzh+5Z0XosbVoh6pwxmZPaxYonhXq+mY+Xfrnkdl1T7ewEIwaM00bs0gMFEAJLHk+KM9PP/PeUwQzt4z808Qh6PpoxeTjT/dV1ouz4JBOQ3ZLRAuu5HzJmZVNa7DXj5ebZM71eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SOzpidnc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WrH/+63Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73vQG3368467
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:31:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	76/2vQui6iJk68wTK2OiKtt/O+mDim4lf/Wjqyl17RM=; b=SOzpidncdvHuVXdK
	wrKBNUaGDfEClTtyfV0EZhr9bNuxwmsMgZHmf+NCMBL30XjwX8xtbDzHkEsuhYza
	aMReyL97c1ZvN8jR7cRorB9YXnSWUdqBfHWStvSxMcLLcMIGblTeGOh50+QK7iM8
	k2vatlB4jo9h8RUQrybqBNCJYrXBmyvdCvlBCtCPKLkrgPhuomF/lja3vZyImFyF
	Kabfd5vzRiOp1xfv1HEYVTDF4idj8vx6AtxfyNImsMjEI02Zl7tOylwHWHKOI/qE
	Ksr6eAEvvJfEC31pPIpvPSweLM7S96vYXohyrPqxN2BGVBlp30iEJKomf8pcNPKH
	TbaLlA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00f9jy89-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:31:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50947db2e97so6612371cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773919869; x=1774524669; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=76/2vQui6iJk68wTK2OiKtt/O+mDim4lf/Wjqyl17RM=;
        b=WrH/+63Z2EV4gyWh9pvHwzpxLTKFGUKEqRqR9mxAvZqLOI+w4NwC+6U5nMl0pqgmP4
         tXPPqQL3kY9LNvcWBMGkZ5H81sOziyVGz+5/WeakTpIf15qyDJ0qvAGANj0bmgQ3vLBA
         g+RVeLVGWj25sLzNNx1YZvrr3JR27jrp7i2DESzskO0vmPNtl3GoNlBLOdUDs/KsYTaj
         3PL7FotBD2Uia9CDiFb3A9/tarUjGX5R8ILCPnussfdG2fn1fjdMzcZeJRpoEYdcWoiF
         2bTotvsXpG2R3TWtf0MXG+w2yQqh21REhwGkijLrnPQsKnf5iKYYKMWJ75l9z81EXgBc
         uHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773919869; x=1774524669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76/2vQui6iJk68wTK2OiKtt/O+mDim4lf/Wjqyl17RM=;
        b=dlJYcNHV/QB7uQXL3Zcv8iil9tAuhTPh5KffeRuk3jGzsLqMQZJFdXaawECdusFNMh
         v8dJYLa4zORihsFCtIt/CHAc+5zsRpdcj/ljbAibH7DIjPjXu1sEtP8kjfEqBKIVAPCc
         RgLrJCMFM8dQpKPNYHvw5KyD8v/auOhBsEaKwSyW3gE387gsH11Dra6C02wy8cMbjvlY
         Um0lXbCohL6zXE/05gjBJNg1egWN82ve7+zyuDcYmaHbniWv76sgMnLPyfMpD9ygkqs6
         BL74m3fHPYg1wT72ZLrzFx6im3GbvMkAMmjzu7Nwqd7PS+554hzscr75BZYUeXOM6XgX
         ftPg==
X-Forwarded-Encrypted: i=1; AJvYcCUwu/7jKzwU/IWephxMjya2LLQe9ZJczUd3xIA5bszUpNgvEa6Y0S+StYm7Y2nVKCtpNc3Y3YdBtUUV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywli9bi3nXQKNdUeBj0YL6qUQVbYuo3Tk/FRYMKbHL7NHPh0lnE
	ZnKMWZoxPfBlfrmbg0/7Wed8eMpb2ixVz+3aABVxdiya9mJOp0ktK3V/5l07FEPUVH/12qWjTWo
	Twv9iEpOqUvV2WifPrb+MtDV+cuykMkg1DwWkjmCa27YmMwuyquCleTpkZ35M3fXG
X-Gm-Gg: ATEYQzxIeDqe0WS3mzB7yrUyRdzjVNBSDxeLXmVh0jNb+pKPL5yEolxLizP36VPHMPb
	piuTrdKdz9fJBPMFBaeH9nehiYjO0bUpnNX6w+JC35XEMuZaVCqVDTfVEAiDbqs9Is4Xw8cjLGE
	Fge/9hjlgZ3WD5MXTr0h/YhrubLLfWFub2wjAinR/F7UoRujb4pTt6Y4siwR/htyoBOBR53hjCf
	KI7VzDrG1SBBc+NTmQlezH1QZ6AsI992ed2p6IgPK+cYIWluW8gWwviQU+PfHP4h60316p5dTbX
	VKQ006PPij+6MXBO1cTW/tcohneyADRgv7vWDB8cg5RdgmsZJ40VSQfj8dRBlNa7vBANKG/tF37
	Z/ITJTqm7aUDQvwKG/c3f76HD8L22D2T140eChOA2WSWOtzpHBxIzS779JIzB+ZtkV+AaJJRloZ
	M+DAo=
X-Received: by 2002:a05:622a:a87:b0:50b:2972:4bec with SMTP id d75a77b69052e-50b29724f8bmr12837321cf.3.1773919868983;
        Thu, 19 Mar 2026 04:31:08 -0700 (PDT)
X-Received: by 2002:a05:622a:a87:b0:50b:2972:4bec with SMTP id d75a77b69052e-50b29724f8bmr12837151cf.3.1773919868433;
        Thu, 19 Mar 2026 04:31:08 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f170e5d4sm428774566b.55.2026.03.19.04.31.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:31:07 -0700 (PDT)
Message-ID: <43ff670b-08fc-434e-8a84-1b781c216fdd@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:31:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: Add UFS node
To: Marcus Glocker <marcus@nazgul.ch>, Maxim Storetvedt <mstoretv@cern.ch>
Cc: Wesley Cheng <quic_wcheng@quicinc.com>, Daniel Gomez <d@kruces.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan@kernel.org>
References: <p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms>
 <g5vlxrttgvfqkktlkhu4uzhtvnp3qtjcbr7l2uztapzqwhrsem@wg574xldh5ar>
 <cd9d5a7c-ec0b-4f0a-bac2-f747799bf295@kernel.org>
 <l5vwputpefdkweti56em37i5asrd3vb7pxhwlzir7webfuk3fl@afcqm3faq2gt>
 <D5I1G5K85QLC.FP6NF7M20KXQ@kruces.com>
 <f5676c71-9e15-4733-aacc-2d194e2567fd@quicinc.com>
 <srqwbf4teujrcvovxglsibvhtq6wpv2ojclf4joc6hwvszhbir@2gxtczxhqlc7>
 <c9304705-41f3-4b4d-97c2-acb0451b3fca@cern.ch>
 <pzujcjjo4izwjrmk2n26htdi2ye5eljagi5qcp3ac52y2fksxr@xvi4cj7b26tw>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <pzujcjjo4izwjrmk2n26htdi2ye5eljagi5qcp3ac52y2fksxr@xvi4cj7b26tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA5MSBTYWx0ZWRfX2BlXUf6T9gTp
 oWSzDsIhlHY/45m/RtP0fPmU6yAgJGLdvCMZxji3gffjWpxWfHNRmS+LjufwS3ypbmYOKxUWEfg
 7gZt71Qj5BBdhOW5cgsez188BacvV0KML8nVHBjQLmGXXBrErepCCbpWEItCbPrCx7Y+VXnUcUE
 wuhec+lhSNtZUDF5Ht+u8lJ7NEEmR7IfVp6kSL40ZezQPYaWlBWXGa2p8aBK3SNctSe0apL11PR
 E84dgtEel1nh28NcSjuzrFU1dAKSNLgnJliKjkfZk4xVd2AkuvkKedx8IKfCrIl7Ll2785zJQrK
 1rCCmhaXZr0eTcYtPu/Uqn7u/rx1/d8Ta2EyFr+0ccTXjK4cGvpvyi56G3Qx7maQNlg5Zj8/WGw
 rON7tERvVI0jgOQBIH25uonEImiRcLaEbNdrg+NMmJpfJMr4myqCJOWcCEI5CqAUHa7bksw0ijV
 QFH/VQ1vUc5PLdYfacw==
X-Proofpoint-GUID: sSdCD1q-Uz0TxNqXCmV0tKI1phAk96UM
X-Proofpoint-ORIG-GUID: sSdCD1q-Uz0TxNqXCmV0tKI1phAk96UM
X-Authority-Analysis: v=2.4 cv=MJttWcZl c=1 sm=1 tr=0 ts=69bbde7d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=lM6lPP4PU3o6MF_I6DMA:9
 a=pJSYWZii-99avefD:21 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190091
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277731-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1d90000:email,nazgul.ch:email,1d84000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.27.41.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0866A2CA501
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/8/26 9:35 PM, Marcus Glocker wrote:
> On Sat, Mar 07, 2026 at 05:01:14PM +0100, Maxim Storetvedt wrote:
> 
>>
>> On 1/3/25 00:17, Marcus Glocker wrote:
>>> On Thu, Jan 02, 2025 at 01:38:10PM GMT, Wesley Cheng wrote:
>>>
>>>>
>>>> On 11/9/2024 3:31 PM, Daniel Gomez wrote:
>>>>> On Fri Aug 30, 2024 at 7:25 PM CEST, Marcus Glocker wrote:
>>>>>> On Fri, Aug 30, 2024 at 02:05:48AM +0200, Konrad Dybcio wrote:
>>>>>>
>>>>>>> On 17.08.2024 10:38 PM, Marcus Glocker wrote:
>>>>>>>> Add the UFS Host Controller node.  This was basically copied from the
>>>>>>>> arch/arm64/boot/dts/qcom/sc7180.dtsi file.
>>>>>>>>
>>>>>>>> Signed-off-by: Marcus Glocker <marcus@nazgul.ch>
>>>>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>>> ---
>>>>>>>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 72 ++++++++++++++++++++++++++
>>>>>>>>  1 file changed, 72 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi 
>>>>>>>> b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>>>>> index 7bca5fcd7d52..9f01b3ff3737 100644
>>>>>>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>>>>> @@ -2878,6 +2878,78 @@ mmss_noc: interconnect@1780000 {
>>>>>>>>  			#interconnect-cells = <2>;
>>>>>>>>  		};
>>>>>>>>
>>>>>>>> +		ufs_mem_hc: ufs@1d84000 {
>>>>>>>> +			compatible = "qcom,x1e80100-ufshc", "qcom,ufshc",
>>>>>>>> +				     "jedec,ufs-2.0";
>>>>>>>> +			reg = <0 0x01d84000 0 0x3000>;
>>>>>>>> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
>>>>>>>> +			phys = <&ufs_mem_phy>;
>>>>>>>> +			phy-names = "ufsphy";
>>>>>>>> +			lanes-per-direction = <1>;
>>>>>>>> +			#reset-cells = <1>;
>>>>>>>> +			resets = <&gcc GCC_UFS_PHY_BCR>;
>>>>>>>> +			reset-names = "rst";
>>>>>>>> +
>>>>>>>> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
>>>>>>>> +
>>>>>>>> +			iommus = <&apps_smmu 0xa0 0x0>;
>>>>>>> Looks like this should be 0x1a0 maybe
>>>>>>>> +
>>>>>>>> +			clock-names = "core_clk",
>>>>>>>> +				      "bus_aggr_clk",
>>>>>>>> +				      "iface_clk",
>>>>>>>> +				      "core_clk_unipro",
>>>>>>>> +				      "ref_clk",
>>>>>>>> +				      "tx_lane0_sync_clk",
>>>>>>>> +				      "rx_lane0_sync_clk";
>>>>>>>> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
>>>>>>>> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
>>>>>>>> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
>>>>>>>> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
>>>>>>>> +				 <&rpmhcc RPMH_CXO_CLK>,
>>>>>>>> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
>>>>>>>> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
>>>>>>> You also want
>>>>>>>
>>>>>>> <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>
>>>>>>>
>>>>>>>> +			freq-table-hz = <50000000 200000000>,
>>>>>>> 25000000 300000000
>>>>>>>
>>>>>>>> +					<0 0>,
>>>>>>>> +					<0 0>,
>>>>>>>> +					<37500000 150000000>,
>>>>>>> 75000000 300000000
>>>>>>>
>>>>>>>> +					<0 0>,
>>>>>>>> +					<0 0>,
>>>>>>>> +					<0 0>;
>>>>>>>> +
>>>>>>>> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>>>>>>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>>>>>>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>>>>>>>> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
>>>>>>>> +			interconnect-names = "ufs-ddr", "cpu-ufs";
>>>>>>>> +
>>>>>>>> +			qcom,ice = <&ice>;
>>>>>>>> +
>>>>>>>> +			status = "disabled";
>>>>>>>> +		};
>>>>>>>> +
>>>>>>>> +		ufs_mem_phy: phy@1d87000 {
>>>>>>>> +			compatible = "qcom,x1e80100-qmp-ufs-phy";
>>>>>>>> +			reg = <0 0x01d87000 0 0x1000>;
>>>>>>> most definitely should be 0x01d80000 with a size of 0x2000
>>>>>>>
>>>>>>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>>>>>>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>>>>>>>> +				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
>>>>>>>> +			clock-names = "ref",
>>>>>>>> +				      "ref_aux",
>>>>>>>> +				      "qref";
>>>>>>>> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
>>>>>>>> +			resets = <&ufs_mem_hc 0>;
>>>>>>>> +			reset-names = "ufsphy";
>>>>>>>> +			#phy-cells = <0>;
>>>>>>>> +			status = "disabled";
>>>>>>>> +		};
>>>>>>>> +
>>>>>>>> +		ice: crypto@1d90000 {
>>>>>>>> +			compatible = "qcom,x1e80100-inline-crypto-engine",
>>>>>>>> +				     "qcom,inline-crypto-engine";
>>>>>>>> +			reg = <0 0x01d90000 0 0x8000>;
>>>>>>> 0x1d88000
>>>>>>>
>>>>>>>
>>>>>>> All this combined means you probably wrote your init sequence into some
>>>>>>> free(?) register space and the one left over from the bootloader was
>>>>>>> good enough :P
>>>>>>>
>>>>>>> Konrad
>>>>>> I have not done anything special in our sub-system to boot this DTB.
>>>>>> Changing the values as suggested by you also doesn't make any difference
>>>>>> to me.
>>>>>>
>>>>>> Anyway, I think I'll give up at this point, since this process is
>>>>>> getting too time consuming for me.  We'll go ahead with out downstream
>>>>>> patches, which works for us so far.
>>>>
>>>>
>>>> Hi Marcus,
>>>>
>>>>
>>>> Do you mind if I take over this series??? I started working on getting at least the UFS and USB portions of the DT file to work on my Samsung Galaxy book4 with your patches, along with some required modifications.?? If you're OK, I'll keep you as the author for the main DT file, and submit my changes on top.
>>>>
>>>>
>>>> Thanks
>>>>
>>>> Wesley Cheng
>>>
>>> Hi Wesley,
>>>
>>> Perfectly fine for me.  I'm glad if there is progress.
>>>
>>> Thanks and Regards,
>>> Marcus
>>>
>>
>> Hi Marcus, Wesley,
>>
>> We've continued to iterate on this device over at its thread on
>> Launchpad, and been able to get a fairly usable system up and running on
>> Linux for both the 14" and 16" SKUs. I'd be happy to update the series
>> with the changes.
>>
>> Cheers,
>> -Max
> 
> Hi Max,
> 
> Good to read!  Sure, I would welcome to see your changes.  If you also
> could send me your full DTS to my e-mail address, I could also test it
> with OpenBSD.

JFYI

https://lore.kernel.org/linux-arm-msm/20260211132926.3716716-4-pradeep.pragallapati@oss.qualcomm.com/

Konrad

