Return-Path: <devicetree+bounces-217240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D895DB571A9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:36:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34A95161327
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB832D73AB;
	Mon, 15 Sep 2025 07:35:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367E72D661D
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757921737; cv=none; b=MD0BLh/ff4Xy9oVKVhoh2K/cY4/xDoqK79oQKyToiCDVPu4r6+CAuW4e0u2rkgNUDMJStouOMUwJ7zbWKdfZj3MTYXwjuusW1268mlNxJQ+xxOkCLeARhjX3DuS9QjC+Vt5/rk7bY5qQlEs2X5QSPk9LoDEjonYmurh0XnPOyF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757921737; c=relaxed/simple;
	bh=OTlhYlwmlrHd5LLpKbj2RzBc7GgHsmuWPZ832h7Kq7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cFc1kFsB/KVk1E2cmuM6/OAJSngzlstzjdPc4RXVJBguFb1zrVPazDGKRYUZ+dPVPxo240/+h5WtksdlaKnp/Y5jnfEqV2QZhQcHi+VnQLWj8N/vVD37IY8I5Hu+jWx2Yh7i6L8I4ESyGkJKzNfu/QR84Fglmd0tEJ4uYABtiy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: esmtpgz16t1757921690t60967de8
X-QQ-Originating-IP: kSwovttHONOrwwhmhJpODn+fWUYHq0Htq6+XUFWGxhE=
Received: from [127.0.0.1] ( [116.234.26.9])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 15 Sep 2025 15:34:48 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3665793942661466864
Message-ID: <4AD4461A95C1A8F2+bc2124f8-d1ae-4fe4-8d0e-55872609d3f3@radxa.com>
Date: Mon, 15 Sep 2025 15:34:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 4/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable UFS controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-4-045f7e92b3bb@radxa.com>
 <9a18cfae-4fcd-490e-b44d-6f9345cc7c3b@oss.qualcomm.com>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <9a18cfae-4fcd-490e-b44d-6f9345cc7c3b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NPMY/kDFuZb0ZqHQxdgOapsGuag6CLDn1Z3Ow/Czpl8mw2y+2XIQ2rW4
	tKKO63rYGwB94YWMAVbj1iBczgzetZPOpKHf5ovbYi66l+u79QdGnMLjrN8s6ejk+XNtuan
	tXQgLKNwAPgxD60AcWSabLjuigOu4u5y4wB52l3N0fETBc2C48hX+89bSBsrdkaiXi/TVsW
	HdkG2BQLk+ZzKF8WMbHuehecbonjNVR5KTs7M6RFcv08CZrQpZ473ehFZPz2YRoXQ9fvKYL
	0jP4QCQi/ph+dc5WkFLwws+5TX9qtIPtfNxpwc3q+57oqW7ukyngyG63/GsdXByOojihT8G
	1S7gWGLeSX7aOdn7Mat8JsgR9WRYLh/RPUcHAKQAHLigJ/WfQ1vRTeu6yvsWzN8MPRiYtsz
	DJ5cuLVxaMB2TaG48UnbC+WUj9V6v0REx2DHnhIcKf9CWjyqAU0Sshkjbc+ygfWyQcF6jLy
	99lWZb+wE+dIOjeNGBhC6CMqxZ0HvUgpJNwsZ1p6PXLNvPcxqQ++biRh7SymxfOKgWWjBKe
	h6WueBRpXxC+NNzD31bQgDUn/qdEyUfQIvDDE4r8Q/nJuMVLfAfU+LD4q9z42brZLqbxM/S
	czsZvAY8wStEiwUYls1Jleky4hYp48OVq1knp/Y3/iSYQ9FXDYK6H2aBbSnWzBy4VlDNPtH
	mc0Xtad5nrDumh+EtOzOwRk1vn2KV8OJ69mRAWoVtOB+v8QsLtIQ7Qc/3KlrxIs+iN6GK/e
	9kA6UzlsBmjrU4zt8y/+wsGenW5Hzl3geZOiqD0dJ/c16PjFfyxCHLmxHSy4DGnZL/X1cv2
	sn6p+zR5rcH+6+sWduVtxgDx9slRWPEUrnTTypcvYFbyl7aAP0MmgequYWDQbuFl3hqSTLa
	HKiBwMv2X8VE7jiPiuTRfsLvvVEjrZ9vYxFpckEWmMHWeUA9eXxXnLQk/oXtISHyzI7duUf
	/oP3ah5J4QuKPsewW2MppFL/CZ0XHSIDrPcuiyv7myNmVNOu8g/oVdXK1iQ8NS6CVG+5fZQ
	5lQgXHMUIvK1VXe5KLxCr7PtaRO9M=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

On 9/15/2025 3:24 PM, Konrad Dybcio wrote:
> On 9/14/25 5:57 PM, Xilin Wu wrote:
>> Add and enable UFS related nodes for this board.
>>
>> Note that UFS Gear-4 Rate-B is unstable due to board and UFS module design
>> limitations. UFS on this board is stable when working at Gear-4 Rate-A.
>>
>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>
>> ---
>>
>> This change depends on the following patch series:
>> https://lore.kernel.org/all/20250902164900.21685-1-quic_rdwivedi@quicinc.com/
>> ---
>>   .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 29 ++++++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>> index d30cddfc3eff07237c7e3480a5d42b29091d87d6..3bf85d68c97891db1f1f0b84fb5649803948e06f 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>> @@ -482,6 +482,11 @@ &i2c13 {
>>   	status = "okay";
>>   };
>>   
>> +/* It takes a long time in ufshcd_init_crypto when enabled */
> 
> Huh? It only turns on some clocks, writes a couple of mmio registers
> and turns the clocks back off, could you investigate a little more?

More specifically, it takes a long time in 
`qcom_scm_ice_invalidate_key`. Considering this platform boots from SPI 
NOR, while TrustZone doesn't really support SPI NOR storage on this 
platform, there could be something broken in TZ.

>> +&ice {
>> +	status = "disabled";
>> +};
>> +
>>   &lpass_audiocc {
>>   	compatible = "qcom,qcm6490-lpassaudiocc";
>>   	/delete-property/ power-domains;
>> @@ -938,6 +943,30 @@ &uart5 {
>>   	status = "okay";
>>   };
>>   
>> +&ufs_mem_hc {
>> +	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
>> +	vcc-supply = <&vreg_l7b_2p96>;
>> +	vcc-max-microamp = <800000>;
>> +	vccq-supply = <&vreg_l9b_1p2>;
>> +	vccq-max-microamp = <900000>;
>> +	vccq2-supply = <&vreg_l9b_1p2>;
>> +	vccq2-max-microamp = <1300000>;
>> +
>> +	/* Gear-4 Rate-B is unstable due to board */
>> +	/* and UFS module design limitations */
> 
> /* Gear-4 Rate-B is unstable due to board and UFS module design limitations */
> 
> Konrad
> 


-- 
Best regards,
Xilin Wu <sophon@radxa.com>

